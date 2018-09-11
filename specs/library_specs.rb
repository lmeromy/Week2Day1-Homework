# Homework week 2 day 1 extension - Library - specs file

require('minitest/autorun')
require('minitest/rg')

require_relative('../library_extension')

class TestLibrary < Minitest::Test

  def setup
    # book_list is the instance variable we create
    # each time we run the test. it is the equivalent
    # in this specific instance of books (see
    # class Library initialize)
    @book_list = [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "atonement",
        rental_details: {
          student_name: "Leah",
          date: "01/11/16"
        }
      }
    ]
    @library = Library.new(@book_list)

  end



  def test_get_books
    assert_equal(@book_list, @library.get_books())
  end

  def test_get_book_info
    result = @book_list[1]
    assert_equal(result, @library.get_book_info("atonement"))
  end

  def test_get_rental_details
    result = {
      student_name: "Leah",
      date: "01/11/16"
    }
    assert_equal(result, @library.get_rental_deets("atonement"))
  end

  def test_add_book
    @library.add_book("1984")
    result = {
      title: "1984",
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    assert_equal(result, @library.get_book_info("1984"))
  end

  def test_update_rental_details
    @library.rent_book("lord_of_the_rings", "Leah", "11-09-18")
    renting_info = @library.get_rental_deets("lord_of_the_rings")
    result = {
      student_name: "Leah",
      date:"11-09-18"
    }
    assert_equal(result, renting_info)
  end


end
