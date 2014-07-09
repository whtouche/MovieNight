class HomeController < ApplicationController
  def show
    @showtimes = Showtime.all
  end
end
