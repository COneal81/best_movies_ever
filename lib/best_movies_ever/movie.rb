class BestMoviesEver::Movie

  attr_accessor :name, :genre, :rating, :description, :url 
  
    def self.list 
      puts "Best Movies of All Time:"
       self.scrape_movies
      end
  
      
   def self.scrape_movies
    movies = []
    
    movies
    end
  
end