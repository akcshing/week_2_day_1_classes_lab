class Library   # creates the class library, whose objects are a particular library

  attr_reader :existing_books

  def initialize(existing_books)
    @existing_books = existing_books
  end


end
