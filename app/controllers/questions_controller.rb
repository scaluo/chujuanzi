class QuestionsController < ApplicationController
  before_action :signed_in_user,only: [:create,:destroy]
  before_action :current_testpaper
  before_action :testpaper_user,only: [:destroy,:edt]
  protect_from_forgery :except => [:create]
  def index
    @hashques = Question.questions_group_type(params[:testpaper_id])
  end

  def edt
    @hashques = Question.questions_group_type(params[:testpaper_id])
  end

  def create
    @question = @testpaper.questions.build({content: params[:content],
                                            score: params[:score],
                                            qtype: params[:qtype]})

    if @question.save
      params.each_key do |key|

        if key.index('answer')==0 && !params[key].empty?
          answer = @question.answers.new({content: params[key]})
          if params[:qtype] == "1" && params[:optAnswer] == key
            answer.ischoose = true
          end

          if params[:qtype] == "2" && params["chk#{key}"] == "1"
            answer.ischoose = true
          end

          if params[:qtype] == "3" && params[:optAnswer] == key
            answer.ischoose = true
          end
          answer.save
        end
      end
      redirect_to edt_testpaper_questions_path(@testpaper)
    else
    end
  end

  def destroy
    @question = @testpaper.questions.find(params[:id])
    if @question
      @question.delete
    end
    redirect_to edt_testpaper_questions_path(@testpaper)
  end

  private
  def current_testpaper
    @testpaper = Testpaper.find(params[:testpaper_id])
  end

  def testpaper_user
      redirect_to root_path unless @testpaper.user == current_user
  end
end
