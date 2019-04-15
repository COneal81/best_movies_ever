 class BestMoviesEver::Scraper 
   
   
  def self.scrape_rt
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
      # binding.pry
      movie_list = doc.css('#main_container a.unstyled.articleLink')
      movie_list[0...10].each do |movie_listings| 
        name = movie_listings.text.strip     
    BestMoviesEver::Movie.new(name)
  end
  end
 end  

     
      # name = doc.css('td').css('a.unstyled.articleLink').first.text
      # movie.description = doc.search("div#movieSynopsis").text