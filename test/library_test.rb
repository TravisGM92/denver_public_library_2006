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

  def test_it_can_add_authors
    dpl = Library.new("Denver Public Library")
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")
    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
    dpl.add_author(charlotte_bronte)
    dpl.add_author(harper_lee)
    dpl.authors

    assert_equal [charlotte_bronte, harper_lee], dpl.authors
  end

  def test_it_can_display_books_of_all_authors
    dpl = Library.new("Denver Public Library")
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    book1 = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")
    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
    dpl.add_author(charlotte_bronte)
    dpl.add_author(harper_lee)
    dpl.authors

    assert_equal [book1, professor, villette, mockingbird], dpl.books
  end
end
