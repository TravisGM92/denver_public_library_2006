class Book

  attr_reader :info, :author_first_name,
              :author_last_name,
              :title, :publication_date,
              :publication_year

  def initialize(info)
    @info = {}
    @author_first_name = info[:author_first_name]
    @author_last_name = info[:author_last_name]
    @title = info[:title]
    @publication_date = info[:publication_date]
    @publication_year = info[:publication_date][-4..-1]
  end

end
