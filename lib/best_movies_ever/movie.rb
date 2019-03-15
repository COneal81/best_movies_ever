class BestMoviesEver::Movie

  attr_accessor :name, :genre, :rating, :description, :url 
  
    def self.list 
      puts "Best Movies of All Time:"
       #This will need to scrape all of the top 100 movies from RT and return instances of movie.
  
      
      movie_1 = self.new 
      movie_1.name = "Black Panther"
      movie_1.genre = "Action & Adventure, Drama, Science Fiction & Fantasy"
      movie_1.rating = "PG"
      movie_1.description = "Black Panther follows wh0, after the events" 
      movie_1.url = "https://www.rottentomatoes.com/m/black_panther_2018"
      
      movie_2 = self.new 
      movie_2.name = "Lady Bird"
      movie_2.genre = "Comedy, Drama"
      movie_2.rating = "R"
      movie_2.description = "In Lady Bird,...beauty of a place called home."
      movie_2.url = "https://www.rottentomatoes.com/m/lady_bird"
      [movie_1, movie_2]
    end
  
end