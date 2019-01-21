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

  def rent_det(book_name)
    for book in @existing_books
      return book[:rental_details] if book[:title] == book_name
    end
  end

  def add_new_book(new_book_title)

    new_book_hash = {
      title: new_book_title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @existing_books << new_book_hash
  end

end
