class BestMoviesEver::Movie

  attr_accessor :name  
  #:url
  
  @@all = []

  def initialize(name)#url
    @name = name 
    # @url = url
    @@all << self #saves/remembers the object
  end
  
  #   def self.list 
  #     puts "Best Movies of All Time:"
  #     scrape_movies
  #     end
  
      
  # def self.scrape_movies
  #   all_movies = []
    
  #   all_movies << BestMoviesEver::Scraper.scrape_rt
  # end
  
  def self.all 
    @@all 
  end
   
    

end

