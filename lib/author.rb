class Author

  attr_reader :info, :name

  def initialize(info)
    @info = {}
    @name = "#{info[:first_name]} " + "#{info[:last_name]}"
  end

end
