require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup

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

end
