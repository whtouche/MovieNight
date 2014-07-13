class ShowtimesController < ApplicationController
  def index
    @showtimes = []
    @showtimes << @movies[0].showtimes[0]['theatre'].name
  end
end

# each showtime has a theater and a datetime
