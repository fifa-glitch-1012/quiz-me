class StaticPagesController < ApplicationController

  def welcome  #in order to have this method called you need to have a route.

    features = [
      "Choose from premade quizzes on a variety of topics",
      "Make your own quizzes to customize your learning",
      "Compare your scores with other users"
    ]
    respond_to do |format|  #respond to http request
      format.html { render :welcome, locals: { features: features } } #particular format is html. render welcome view and returns 
      
    end
  end

  def about
    respond_to do |format|
      format.html { render :about }
    end
  end

end 