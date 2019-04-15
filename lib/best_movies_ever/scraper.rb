 class BestMoviesEver::Scraper 
   
   
  def self.scrape_rt
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
      # binding.pry
      movie_list = doc.css('#main_container a.unstyled.articleLink')
      movie_list[0...10].each do |movie_listings| 
        name = movie_listings.text.strip 
        url = movie_listings.css('#main_container table td a href')
    BestMoviesEver::Movie.new(name, url)
  end
  end
 end  

     
      # name = doc.css('td').css('a.unstyled.articleLink').first.text
      # movie.description = doc.search("div#movieSynopsis").text