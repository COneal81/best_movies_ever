class BestMoviesEver::Movie

  attr_accessor :name, :genre, :rating, :description, :url 
  
    def self.list 
      puts "Best Movies of All Time:"
       self.scrape_movies
      end
  
      
   def self.scrape_movies
    all_movies = []
    
    all_movies << self.scrape_rt
   end
  
    def self.scrape_rt
      doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
      #name = doc.search('#main_containe"r .unstyled.articleLink').text
      binding.pry
    end
    

end

