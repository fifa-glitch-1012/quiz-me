class StaticPagesController < ApplicationController

  def welcome  #in order to have this method called you need to have a route.
    respond_to do |format|  #respond to http request
      format.html { render :welcome }  #particular format is html. render welcome view and returns 
      
    end
  end
end 