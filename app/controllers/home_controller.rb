class HomeController < ApplicationController
  def show
    @events = Event.all # This isn't right, should show all events you have joined (or started [BUT HOW?])
  end
end
