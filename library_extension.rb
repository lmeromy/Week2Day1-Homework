# Homework week 2 day 1 extension - Library

class Library

  def initialize(books)
    @books = books || []
    # means books or empty array. This will allow
    # class to be created even without populated books array

  end

  def get_books()
    return @books
  end

  def get_book_info(title)
    found_book = nil
    for book in @books
      if book[:title] == title
        found_book = book
      end
    end
    return found_book
  end


  def get_rental_deets(title)
    book = get_book_info(title)
    return book[:rental_details]
  end

  def add_book(title)
    new_book = {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books.push(new_book)
  end

  def rent_book(title, name, date)
    book = get_book_info(title)
    book[:rental_details] = { student_name: name, date: date}
  end


end
