 class BestMoviesEver::Scraper 
   
   
  def self.scrape_rt
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
      
      movie_list = doc.css('#main_container a.unstyled.articleLink')
      movie_list[0...10].each do |movie_listings| 
        name = movie_listings.text.strip 
        # binding.pry
        url = movie_listings.attr('href')
    BestMoviesEver::Movie.new(name, url)
  end
  end
  
  def self.scrape_details(movie)
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com#{movie.url}"))
    movie.description = doc.search("div#movieSynopsis").text.strip
    # movie.genre = 
    binding.pry
  end
 end  

     
      # name = doc.css('td').css('a.unstyled.articleLink').first.text
       