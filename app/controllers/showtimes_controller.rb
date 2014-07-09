class ShowtimesController < ApplicationController
  def index
    @showtimes = Showtime.all
  end
end
