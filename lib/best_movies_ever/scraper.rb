 class BestMoviesEver::Scraper 
   
   
  def self.scrape_rt 
   
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
      # binding.pry
      movie = doc.css('#main_container a.unstyled.articleLink')
      movie[0...2].each do |movie_listing| 
        name = movie_listing.css('test')        
      BestMoviesEver::Movie.new(name)
        
    end
  end
 end  

     
      # name = doc.css('td').css('a.unstyled.articleLink').first.text
      # movie.description = doc.search("div#movieSynopsis").text