class BestMoviesEver::Scraper 
   
  def self.scrape_rt
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
      movie_list = doc.css('#main_container a.unstyled.articleLink')
      movie_list[0...100].each do |movie_listings| 
        name = movie_listings.text.strip 
        url = movie_listings.attr('href')
    BestMoviesEver::Movie.new(name, url)
    end
  end
  
  def self.scrape_details(movie)
     binding.pry
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com#{movie.url}"))
    movie.description = doc.search("div#movieSynopsis").text.strip
    movie.rating = doc.css('div.meta-value').first.text.strip
    movie.genre = doc.css('div.meta-value a').first.text.strip
  end
  
end  

       