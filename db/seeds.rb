Showtime.delete_all
Event.delete_all

# Showtime.create!(HTTParty.get("http://data.tmsapi.com/v1/movies/showings?startDate=2014-07-08&zip=02144&api_key=ENV['TMS_TOKEN']"))
a_movie = Showtime.create!(theater: "Somerville", title: "Edge of Tomorrow", description: "Movie Description", genre: "Fake" )
an_event = Event.create!(title: "Movie With Ben!", location: "Somerville Theater", description: "Let's see a movie", date: "2014-07-10")
