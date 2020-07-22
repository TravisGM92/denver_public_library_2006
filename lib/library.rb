class Library

  attr_reader :name, :books, :authors
  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    authors << author
    @authors.each{ |a| books << a.books}
    books.flatten!.uniq!

  end

end
