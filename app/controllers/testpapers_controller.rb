class TestpapersController < ApplicationController
  before_action :signed_in_user,only: [:create,:destroy]
  before_action :currentuser_paper,only: [:destroy]
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

  def destroy
    @testpaper.destroy
    redirect_to my_testpapers_path
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

  def currentuser_paper
    @testpaper = current_user.testpapers.find(params[:id])
    redirect_to root_path if @testpaper.nil?
  end
end
