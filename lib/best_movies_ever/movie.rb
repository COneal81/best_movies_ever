class BestMoviesEver::Movie

  attr_accessor :name, :url, :description, :genre, :rating
  
  @@all = []

  def initialize(name, url)
    @name = name 
    @url = url
    @@all << self  #saves and remembers the object
  end
  
  def self.show_movie_details(the_movie)
    BestMoviesEver::Scraper.scrape_details(the_movie) unless !!the_movie.description
      puts "\n* * * * * * * * * * * * * * ~~  Movie Information ~~ * * * * * * * * * * * * * *\n".bold.red
      puts "  Title: #{the_movie.name}\n".light_green
      # puts "      URL:   #{the_movie.url}"
      puts "  TV Rating: #{the_movie.rating}\n".light_blue
      puts "  Genre: #{the_movie.genre}\n".light_magenta
      puts "  Description: #{the_movie.description}".light_cyan
      puts "\n* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\n".bold.red
  end
  
  def self.all
    @@all 
  end
end

