require "minitest/autorun"
require "minitest/pride"
require "./lib/book"

class Booktest < MiniTest::Test

  def test_it_exists
    book1 = Book.new("info")

    assert_instance_of Book, book1
  end
end
