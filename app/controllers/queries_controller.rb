class QueriesController < ApplicationController
    # This is now set in the 'tms.rb' initializer, so this should not be necessary?
    # TMS = TMSAPI::API.new :api_key => ENV['TMS_TOKEN']

    def new
    end

    def create
      @zip = params['zip']
      @date = params['date']
      @results = get_tms_data(@zip, @date)
    end

    def show
      result = get_tms_data(params[:zip], params[:date])
      @result = result.select { |movie| movie.title == params[:title] }.first
      @event = Event.new
    end

    private

  # Uses TMS API with TMS gem and returns data for all movies playing in area by date
  def get_tms_data(zip, date)
    TMS.movies.theatres.showings(zip: "#{zip}", startDate: "#{date}")
  end
end
