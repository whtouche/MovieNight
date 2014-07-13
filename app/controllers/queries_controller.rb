class QueriesController < ApplicationController
  TMS = TMSAPI::API.new :api_key => ENV['TMS_TOKEN']

  def new
    # Delete this? Since not persisting
    #@query = Query.new
  end

  def create
    #@query = Query.new
    @zip = params['zip']
    @date = params['date']
    @results = data(@zip, @date)

    #binding.pry
  end

  def show
    result = data(params[:zip], params[:date])
    @result = result.select { |movie| movie.title == params[:title] }.first
    @event = Event.new
  end

  private

  #def query_params
  #  params.require(:query).permit(:zip, :date)
  #end

  def data(zip, date) # Uses TMS API with TMS gem and returns data for all movies playing in area by date
    TMS.movies.theatres.showings(zip: "#{zip}", startDate: "#{date}")
  end

  def movies(data)
    @movies = []
    data.each do |movie|
      movies << @movie.title
    end
    return movies
  end

  def save_data_from_api(data)
    data.each do |movie|
      @movie = Movie.new
      @movie.title = movie.title
      @movie.showtimes << movie.showtimes

    end
# Create movie model
# Showtimes column = array
  end

end
