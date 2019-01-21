class Library   # creates the class library, whose objects are a particular library

  attr_reader :existing_books

  def initialize(existing_books)
    @existing_books = existing_books # array
  end

  def get_book(book_name)
    # return book hash if the book name arguement is == book hash's title value
    for book in @existing_books
      return book if book[:title] == book_name
    end
  end

end
