require "minitest/autorun"
require "minitest/pride"
require "./lib/author"
require "./lib/book"


class Authortest < MiniTest::Test

  def test_it_exists
    author1 = Author.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

    assert_instance_of Author, author1
  end

  def test_it_has_name
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal charlotte_bronte.name, "Charlotte Bronte"
  end

  def test_it_has_no_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal charlotte_bronte.books, []
  end

  def test_it_can_write
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    new_book = charlotte_bronte.write("Villette", "1853")

    assert_equal charlotte_bronte.books, [jane_eyre, new_book]
  end


end
