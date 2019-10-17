class ReviewsController < ApplicationController


  def index
    review = Author.all
    respond_to do |format|
      format.html { render :index, locals: { reviews: reviews } }
    end
  end


  def show
    review = Book.find(params[:id])
    respond_to do |format|
      format.html { render :show, locals: { review: review } }
    end
end