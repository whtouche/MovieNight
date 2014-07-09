class ShowtimesController < ApplicationController
  def index
    bigdata = Showtimer.data('02144') # Query TMS API for movie data for zip 02144
    count = bigdata.each.count # 'count' stores the number of movies
    Showtime.new

    @showtimes = Showtime.all
  end
end
