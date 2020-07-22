class Author

  attr_reader :info, :name, :books

  def initialize(info)
    @info = {}
    @name = "#{info[:first_name]} " + "#{info[:last_name]}"
    @books = []
  end

  def write(title, year)
    books << Book.new({author_first_name: "#{self.name[0]}", author_last_name: "#{self.name[1]}", title: "#{title}", publication_date: "#{year}"})
    books[-1]
  end

end
