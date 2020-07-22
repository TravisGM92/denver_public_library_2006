require "minitest/autorun"
require "minitest/pride"
require "./lib/author"
require "./lib/book"
require "./lib/library"



class Librarytest < MiniTest::Test

  def test_it_exists
    dpl = Library.new("Denver Public Library")

    assert_instance_of Library, dpl
  end

  def test_it_has_a_name
    dpl = Library.new("Denver Public Library")

    assert_equal "Denver Public Library", dpl.name
  end

  def test_it_has_no_books
    dpl = Library.new("Denver Public Library")

    assert_equal [], dpl.books
  end

  def test_it_has_no_authors
    dpl = Library.new("Denver Public Library")

    assert_equal [], dpl.authors
  end
end
