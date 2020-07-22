class Book

  attr_reader :info, :author_first_name

  def initialize(info)
    @info = {}
    @author_first_name = info[:author_first_name]
  end

end
