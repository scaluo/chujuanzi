class QuestionsController < ApplicationController
  before_action :current_testpaper
  protect_from_forgery :except => [:create]
  def index
    @hashques = Question.questions_group_type(params[:testpaper_id])
  end

  def edt
    @hashques = Question.questions_group_type(params[:testpaper_id])
  end

  def create
    @question = @testpaper.questions.build({content: params[:content],
                                            score: 10,
                                            qtype: params[:qtype]})

    if @question.save
      params.each_key do |key|

        if !key.index('answer').nil? && !params[key].empty?
          answer = @question.answers.create({content: params[key]})

        end
      end
      redirect_to edt_testpaper_questions_path(@testpaper)
    else
    end
  end

  private
  def current_testpaper
    @testpaper = Testpaper.find(params[:testpaper_id])
  end
end
