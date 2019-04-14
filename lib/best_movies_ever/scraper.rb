 class BestMoviesEver::Scraper 
   
   
  def self.scrape_rt 
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
      # binding.pry
      
    movie_listings= doc.css('td a.unstyled.articleLink')
      movie_listings[0...100].each do |movie_listing| 
     name = movie_listings.css('a.unstyled.articleLink').text
        BestMoviesEver::Movie.new(name)
     end
  end
   
end
      # movie_listings= doc.css('td').css('a.unstyled.articleLink')
      # movie= self.new
       #"#main_container .unstyled.articleLink"
        
      # name = doc.css('td').css('a.unstyled.articleLink').first.text
        # url = "https://www.rottentomatoes.com" + movie_listings.search('a')["href"].value
      # movie.description = doc.search("div#movieSynopsis").text