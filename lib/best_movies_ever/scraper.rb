 class BestMoviesEver::Scraper 
   
 def self.scrape_rt
      doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
      # binding.pry
      movie = self.new
      movie.name = doc.search('#main_container .unstyled.articleLink').text.strip
      movie.name[1...100].each do |movie| 
        puts "#{movie}"
      # movie.name = doc.search(".mop-ratings-wrap__title--top").text
      # movie.description = doc.search("div#movieSynopsis").text
      # movie.info = doc.search(".content-meta.info .meta-row").text
      # movie.rating = doc.search(".meta-value").text
     BestMoviesEver::Movie.new(movie.name)
    end
  end
  
end