class BestMoviesEver::CLI 
  attr_accessor :sorted_movies
  
  def call 
    puts "Welcome to Best Movies Ever CLI, home to the top rated movies!!"
    BestMoviesEver::Scraper.scrape_rt
    list_movies
    menu
    goodbye
  end


  def list_movies
    # @movie = BestMoviesEver::Scraper.scrape_rt
    @sorted_movies.each.with_index(1) do |movie, index|
    puts ""
    puts "#{index}. #{movie.name} ~ #{movie.url}"
    end
  end
        
#allow the user to choose a section of movies, all movies, or end
  def menu
    input = nil 
    while input != 'exit'
      puts "Enter a number for the movie you would like to see more information on;"
    input = gets.strip.downcase
        
    if input.to_i > 0
          the_movie = @sorted_movies[input.to_i-1]
           puts "#{the_movie.name}"
           #puts "      Genre: #{the_movie.genre}"
          # puts "      Description: #{the_movie.description}"
      elsif input == "list"
        list_movies
      else
        puts "Invalid Entry. Enter a number  to see more information on a particular movie, list to see all movies, or exit to leave."
      end
    end
  end
end
    
    def goodbye
      puts "Thank you for visiting.  Check back with us when it is time to watch another movie!"
    end 







