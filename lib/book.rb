class Book

  attr_reader :info, :author_first_name,
              :author_last_name,
              :title, :publication_date,
              :publication_year

attr_accessor :number_loaned

  def initialize(info)
    @info = {}
    @author_first_name = info[:author_first_name]
    @author_last_name = info[:author_last_name]
    @title = info[:title]
    @publication_date = info[:publication_date]
    @publication_year = info[:publication_date][-4..-1]
    @number_loaned = 0
  end

end
