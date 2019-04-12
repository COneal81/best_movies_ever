 class BestMoviesEver::Scraper 
   
 def self.scrape_rt
      doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
      # binding.pry
      movie_listings = doc.search('td .unstyled.articleLink')#main_container .unstyled.articleLink
      movie_listings.each do |movie_listing| 
        name = movie_listing.css("td .unstyled.articleLink").text
        # url = "https://www.rottentomatoes.com" + movie_listing.css('a')[0].attributes["href"].value
      # movie.description = doc.search("div#movieSynopsis").text
      # movie.info = doc.search(".content-meta.info .meta-row").text
      # movie.rating = doc.search(".meta-value").text
    
    BestMoviesEver::Movie.new(name )#url
   end
  end
  
end