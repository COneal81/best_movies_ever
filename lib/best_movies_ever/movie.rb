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
      #doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
      doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/m/lady_bird"))
      # binding.pry
      movie = self.new 
      #movie.name = doc.search('#main_container .unstyled.articleLink').text.strip
      movie.name = doc.search(".mop-ratings-wrap__title--top").text
      movie.description = doc.search("div#movieSynopsis").text
      # movie.info = doc.search(".content-meta.info .meta-row").text
      # movie.rating = doc.search(".meta-value").text
      movie
      
    end
    

end

