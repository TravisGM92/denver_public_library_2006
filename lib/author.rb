class Author

  attr_reader :info, :name, :books

  def initialize(info)
    @info = {}
    @name = "#{info[:first_name]} " + "#{info[:last_name]}"
    @books = []
  end

  def write(title, year)
    # book1 = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})



  end

end
