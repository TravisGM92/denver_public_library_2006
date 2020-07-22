require './lib/book'
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
      book.number_loaned += 1
      true
    else
      false
    end
  end

  def return(book)
    if @checked_out_books.include? book
      @checked_out_books.delete(book)
      @books << book
    else
      "Error"
    end
  end

  def most_popular_book
    @books.sort_by{ |book| book.number_loaned}.last
  end


end
