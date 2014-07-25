class BooksController < ApplicationController

	def index
		#this is the home page
		@books = Book.limit(25)
	end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:success] = "Book created"
      redirect_to root_path
    else
      flash[:error] = "Oops, something went wrong"
      render :new
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :isbn, :cover)
  end

end
