class ShowtimesController < ApplicationController
  def index
    @showtimes = Showtime.all
  end

  def new
    @showtime = Showtime.new
    # This might all be completely made up
    #bigdata = Showtimer.data('02144') # Query TMS API for movie data for zip 02144
    #count = bigdata.each.count # 'count' stores the number of movies
    #@showtime = Showtime.new
  end
end
