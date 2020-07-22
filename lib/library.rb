class Library

  attr_reader :name, :books, :authors, :checked_out_books
  def initialize(name)
    @name = name
    @books = []
    @authors = []
    @checked_out_books = []
  end

  def add_author(author)
    @authors << author
    @authors.each{ |a| books << a.books}
    books.flatten!.uniq!
  end

  def publication_time_frame_for(author)
    hash = {}
    years = author.books.map do |book|
      if book.publication_date.length > 4
        book.publication_date[-4..-1]
      else
        book.publication_date
      end
    end
    hash[:start] = years.min
    hash[:end] = years.max
    hash
  end

  def checkout(book)
    if @books.include? book
      @checked_out_books << book
      true
    else
      false
    end
  end

end
