class Book < ActiveRecord::Base

	validates :isbn, presence: true
	validates :title, presence: true

end
