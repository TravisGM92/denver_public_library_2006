require "minitest/autorun"
require "minitest/pride"
require "./lib/author"
require "./lib/book"


class Librarytest < MiniTest::Test

  def test_it_exists
    dpl = Library.new("Denver Public Library")

    assert_instance_of Library, dpl
  end
end
