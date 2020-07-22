class Author

  attr_reader :info, :name, :books

  def initialize(info)
    @info = {}
    @name = "#{info[:first_name]} " + "#{info[:last_name]}"
    @books = []
  end

end
