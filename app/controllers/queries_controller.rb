class QueriesController < ApplicationController
  TMS = TMSAPI::API.new :api_key => ENV['TMS_TOKEN']

  def new
    @query = Query.new

  end

  def create
    @query = Query.new
    @query.zip = query_params['zip']
    @query.date = query_params['date']
    @results = data(@query.zip, @query.date)

    binding.pry
  end

  private

  def query_params
    params.require(:query).permit(:zip, :date)
  end

  def data(zip, date)
    TMS.movies.theatres.showings(zip: "#{zip}", startDate: "#{date}")
  end

  def movies(data) # Get a list of all movie titles ##DOESN'T WORK
    data.each do |movie|
      movie.title
    end
  end
end
