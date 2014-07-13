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

  def data(zip, date) # Uses TMS API with TMS gem and returns data for all movies playing in area by date
    TMS.movies.theatres.showings(zip: "#{zip}", startDate: "#{date}")
  end

  def movies(data) # Get a list of all movie titles ##DOESN'T WORK
    @movies = []
    data.each do |movie|
      movies << @movie.title
    end
    return movies
  end
end
