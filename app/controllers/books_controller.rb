class BooksController < ApplicationController

	def index
		#this is the home page
		@books = Book.limit(25)
	end

end
