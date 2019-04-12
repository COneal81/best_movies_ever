class BestMoviesEver::Movie

  attr_accessor :name, :url 
  
  @@all = []

  def initialize(name, url)
    @name = name 
    @url = url
    @@all << self #saves/remembers the object
  end
  
    def self.list 
      puts "Best Movies of All Time:"
       self.scrape_movies
      end
  
      
   def self.scrape_movies
    all_movies = []
    
    all_movies << self.scrape_rt
   end
  
   
   
    

end

