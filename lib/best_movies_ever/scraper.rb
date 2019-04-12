 class BestMoviesEver::Scraper 
   
 def self.scrape_rt
      doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
      # binding.pry
      movie_listings = doc.search("#main_container .unstyled.articleLink")
        # 'td .unstyled.articleLink')
      movie_listings.each do |movie_listing| 
        name = movie_listings.css("#main_container .unstyled.articleLink").text
        # url = "https://www.rottentomatoes.com" + movie_listing.css('a')[0].attributes["href"].value
      # movie.description = doc.search("div#movieSynopsis").text
      # movie.info = doc.search(".content-meta.info .meta-row").text
      # movie.rating = doc.search(".meta-value").text
    
    BestMoviesEver::Movie.new(name )#url
   end
 end
end