require "minitest/autorun"
require "minitest/pride"
require "./lib/book"

class Booktest < MiniTest::Test

  def test_it_exists
    book1 = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

    assert_instance_of Book, book1
  end

  def test_it_has_an_author_first_name
    book1 = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

    assert_equal "Harper", book1.author_first_name
  end

  def test_it_has_an_author_last_name
    book1 = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

    assert_equal "Harper", book1.author_last_name
  end
end
