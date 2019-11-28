class ReviewsController < ApplicationController

  before_action :authenticate_user!
  def index
    reviews = Review.all
    respond_to do |format|
      format.html { render :index, locals: { reviews: reviews } }
    end
  end

  def show
    review = Review.find(params[:id])
    respond_to do |format|
      format.html { render :show, locals: { review: review } }
    end
  end
end
