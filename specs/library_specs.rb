require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup

    @empty_library = Library.new([])      # .new is == initialize


    @library_1 = Library.new(
      [
        {
          title: "lord_of_the_rings",
          rental_details: {
            student_name: "Jeff",
            date: "01/12/16"
          }
        },
        {
          title: "Martian",
          rental_details: {
            student_name: "Alex",
            date: "21/01/19"
          }
        }
      ]
    )

  end

  def test_get_books_array
    assert_equal([
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "Martian",
        rental_details: {
          student_name: "Alex",
          date: "21/01/19"
        }
      }
      ], @library_1.existing_books())
  end

  def test_get_books_array__empty
    assert_equal([], @empty_library.existing_books())
  end


  def test_find_book
    book_name = "Martian"
    assert_equal(
      {
        title: "Martian",
        rental_details: {
          student_name: "Alex",
          date: "21/01/19"
        }
      }, @library_1.get_book(book_name))
  end

  def test_return_rental_details_for_book_name
    book_name = "Martian"
    assert_equal(
      {
        student_name: "Alex",
        date: "21/01/19"
      }, @library_1.rent_det(book_name))
  end

  def test_add_book
    new_book_title = "Ruby for Dummies"
    @library_1.add_new_book(new_book_title)
    assert_equal(
      {
        title: "Ruby for Dummies",
        rental_details: {
          student_name: "",
          date: ""
        }
      }, @library_1.existing_books[-1])
  end

  def test_modify_rental_details

    book_title = "Martian"
    new_student_name = "John"
    new_date = "29/01/19"
    @library_1.modify_rent_det(book_title, new_student_name, new_date)
    assert_equal(
      {
        title: "Martian",
        rental_details: {
          student_name: "John",
          date: "29/01/19"
          }
      }, @library_1.get_book(book_title)) #could use rent_det method also
  end

end
