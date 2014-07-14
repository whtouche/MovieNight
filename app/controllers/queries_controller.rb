class QueriesController < ApplicationController
  TMS = TMSAPI::API.new :api_key => ENV['TMS_TOKEN']

  def new
  end

  def create
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

  def data(zip, date) # Uses TMS API with TMS gem and returns data for all movies playing in area by date
    TMS.movies.theatres.showings(zip: "#{zip}", startDate: "#{date}")
  end
end
