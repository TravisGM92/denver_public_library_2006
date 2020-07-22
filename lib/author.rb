class Author

  attr_reader :info, :first_name

  def initialize(info)
    @info = {}
    @first_name = info[:first_name]
  end

end
