class Book

  attr_reader :info, :author_first_name,
              :author_last_name,
              :title

  def initialize(info)
    @info = {}
    @author_first_name = info[:author_first_name]
    @author_last_name = info[:author_last_name]
    @title = info[:title]
  end

end
