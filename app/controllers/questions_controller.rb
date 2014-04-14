class QuestionsController < ApplicationController
  def index
    @testpaper = Testpaper.find(params[:testpaper_id])
    @hashques = Question.questions_group_type(params[:testpaper_id])
  end

  def edt
    @testpaper = Testpaper.find(params[:testpaper_id])
    @hashques = Question.questions_group_type(params[:testpaper_id])
  end


end
