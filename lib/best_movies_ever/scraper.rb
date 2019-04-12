 class BestMoviesEver::Scraper 
   
   
 def self.scrape_rt
      doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
      # binding.pry
      movie_listings = doc.search("a.unstyled.articleLink")
        movie_listings.each do |movie_listing| 
        #"#main_container .unstyled.articleLink"
        
        name = movie_listings.css("#main_container .unstyled.articleLink").text
        # url = "https://www.rottentomatoes.com" + movie_listings.search('a')["href"].value
      # movie.description = doc.search("div#movieSynopsis").text
    # movie_listings
    # BestMoviesEver::Movie.new(name)#url
      movie_listings
   end
 end
end