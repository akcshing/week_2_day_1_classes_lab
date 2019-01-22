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

  # hash.key()
  # hash.value()
  # "key" => "value"
  # :key => "value"
  # key: "value"

  def modify_rent_det(book_title, new_student_name, new_date)
    # rent_det(book_title)[:student_name] = new_student_name
    # rent_det(book_title)[:date] = new_date
    # rent_det(book_title)[student_name: new_student_name, date: new_date] # attempted refactor
    get_book(book_title)[:rental_details]={student_name: new_student_name, date: new_date} # passing refactor
    return get_book(book_title)
  end

end
