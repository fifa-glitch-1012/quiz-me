class BooksController < ApplicationController

  def show
  end


  def index
    books = Book.all
    respond_to do |format|
      format.html { render :index, locals: { books: books } }
    end
  end
  
end
