<h1>Movie Night</h1>

http://its-movie-night.herokuapp.com/

<b>Movie Night</b> is a social movie discovery and event planning app. Users can create accounts, put in a date and a zip code and chose from a list of movies playing in a five mile radius. This will bring you to a page with a description of the movie and a list of showtimes on the date you chose. Clicking a showtime will bring you to the event create page where you can give your event a title and a description.

Once your event is created, other users will be able to see and join it when they click "Browse Movie Nights."

<h2>Installation</h2>

Designed as a Ruby on Rails app, Movie Night takes advantage of the [TMS] API for local movie data which is used to create events. You will have to obtain your own key. To get started, clone the repo and run:


$ rake db:create

to create the database, and then:

$ bundle

and then migrate the database:

$ rake db:migrate


As long as you have obtained a <a href="http://developer.tmsapi.com/io-docs">TMS</a> API key and added it to the initializer you should be ready to go.

<h3>Notes</h3>
This project was scoped and implemented in one week as my first project for <a href="https://generalassemb.ly/">General Assembly</a>'s <a href="https://generalassemb.ly/education/web-development-immersive">Web Development Immersive</a> program. I keep a list of features I would like to eventually implement and look forward to coming back to and improving this project.

