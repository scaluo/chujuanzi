class StaticPagesController < ApplicationController
  def home
    render layout: "homelayer"
  end

  def about
  end
end
