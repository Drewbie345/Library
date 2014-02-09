class Library

	attr_accessor :name

	# create new library
	def initialize(name)
		@name = name
		@books = []
		@book_status = Hash.new
		@who_has_book = Hash.new
	end

	# add new books to library
	def add_book(book)
		@books << book
		@book_status[book.title] = book.get_status
	end

	# get list of current books
	def book_list
		puts "Here are the books in our library:"
		@books.each { |book| puts "#{book.name}" }
	end

	def check_book_status
		@book_status.each { |k, v| puts "#{k}: #{v}" }
	end

	# get list of current available books
	def available_books
		puts "Available Books:"
		@book_status.each { |k, v| puts "#{k}" if v == "available" }
	end

	# get list of current borrowed books
	def borrowed_books
		puts "Borrowed Books:"
		@book_status.each { |k, v| puts "#{k}" if v == "checked_out" }
	end

	# get a list of books and associated borrowers who have them checked out
	def who_has_what
		@who_has_book.each do |k, v|
			puts "#{k}: #{v}"
		end
	end

	# check out books
	def check_out(book, borrower)
		borrower.add_my_books(book)
		@who_has_book[borrower.name] = borrower.my_books
		@number_of_books = borrower.my_books
			
		if @who_has_book.has_key?(borrower.name) && @number_of_books.count <= 2
			if book.get_status == "available"
				book.change_status
				if @book_status.has_key?(book.title)
					@book_status[book.title] = book.get_status
				end	
				puts "You've checked out #{book.title}"
			else
				puts "Not Available!"
			end
		else
			puts "What a reader! You've got too many books!"
		end
	end

	# check in books
	def check_in(book, borrower)
		book.change_status
		@book_status.each do |key, value|
			if key == book.title
				 value.replace "available"
			end	
		end

		if @who_has_book.has_key?(borrower.name)
			@who_has_book.each do |key, value|
				value.delete_if { |b| b == book.title }
			end
		end
	end

	# check book status
	def is_available?(book)
		puts "#{book.title}: #{book.get_status}"
	end


end

class Borrower
	attr_accessor :name

	# create new borrower
	def initialize(name)
		@name = name
		@my_books = []
	end

	# get borrower's checked-out books
	def add_my_books(book)
		@my_books << book.title
	end

	def my_books
		@my_books
	end

	def print_my_books
		@my_books.each { |book| puts "#{book}" }
	end

end

class Book
	attr_accessor :title, :author, :id, :status

	# create new book
	def initialize(title, author)
		@title = title
		@author = author
		@status = "available"
		@id = nil
	end

	# get book's current status
	def get_status
		status
	end

	# prints book's current status
	def print_status
		puts "#{status}"
	end

	# change book's current status
	def change_status
		if status.include?("available")
			status = "checked_out"
		elsif status.include?("checked_out")
			status = "available"
		end
	end	
end