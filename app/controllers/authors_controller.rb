class AuthorsController < ApplicationController

  def index
    authors = Author.all
    respond_to do |format|
      format.html { render :index, locals: { authors: authors } }
    end
  end


  def show
    author = Book.find(params[:id])
    respond_to do |format|
      format.html { render :show, locals: { author: author } }
    end
  end

end


