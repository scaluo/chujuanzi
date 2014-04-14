class TestpapersController < ApplicationController
  before_action :signed_in_user,:my
  def new
    @testpaper = Testpaper.new
  end

  def create
    @testpaper = current_user.testpapers.build(testpaper_params)
    @testpaper.timelimit = 0
    if @testpaper.save
      redirect_to edt_testpaper_questions_path(@testpaper)
    else
      render 'new'
    end
  end

  def index
  end

  def my
    @testpapers = current_user.testpapers
  end

  private
  def testpaper_params
    params.require(:testpaper).permit(:title,:summary,:securecode)
  end
end
