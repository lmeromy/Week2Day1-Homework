# Homework week 2 day 1 extension - Library - specs file

require('minitest/autorun')
require('minitest/rg')

require_relative('../library_extension')

class TestLibrary < Minitest::Test

  def setup
    @library = Library.new([
      @book1 = {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      @book2 = {
        title: "atonement",
        rental_details: {
          student_name: "Leah",
          date: "01/11/16"
        }
      }
    ]
  )
end



def test_get_books
  result = get_books(@library)
  assert_equal(@library, result)
end


end
