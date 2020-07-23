class Author

  attr_reader :name, :books,
              :first_name, :last_name

  def initialize(info)
    @name = "#{info[:first_name]} " + "#{info[:last_name]}"
    @books = []
    @first_name = info[:first_name]
    @last_name = info[:last_name]
  end

  def write(title, year)
    books << Book.new({author_first_name: "#{self.first_name}", author_last_name: "#{self.last_name}", title: "#{title}", publication_date: "#{year}"})
    @books.uniq
    books[-1]
  end
end
