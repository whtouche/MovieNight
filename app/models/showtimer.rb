# require 'httparty'

class Showtimer
=begin
  include HTTParty
  base_uri 'http://data.tmsapi.com/'
  default_params :apiKey => ENV['TMS_TOKEN']


  def self.get_showings_by_zip(zip)
    get('v1/movies/showings?startDate=2014-07-08&zip=#{zip}')
  end
=end
TMS = TMSAPI::API.new :api_key => ENV['TMS_TOKEN']
  def self.data(zip, date) # must be input as a 'string'
    #TMS.movies.theatres.showings({ :zip => "#{zip}" })
    TMS.movies.theatres.showings(zip: "#{zip}", stateDate: "#{date}")
  end
  #binding.pry
  # Add to _showtime.html.erb view to display data dump on the browse movies page
  # <%= Showtimer.data('02144') %>
end
