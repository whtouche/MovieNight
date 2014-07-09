# Showtime.delete_all

# Showtime.create!(HTTParty.get("http://data.tmsapi.com/v1/movies/showings?startDate=2014-07-08&zip=02144&api_key=ENV['TMS_TOKEN']"))
a_movie = Showtime.create!(theater: "Somerville", title: "Movie Title", description: "Movie Description", genre: "Fake" )
