class BestMoviesEver::CLI 
  
  attr_accessor :movie_list
  
  def call 
    puts "Welcome to Best Movies Ever CLI, home to the top rated movies!!"
    BestMoviesEver::Scraper.scrape_rt
    movie_list
    list_movies
    menu
    goodbye
  end

    def movie_list
    @movie_list = BestMoviesEver::Movie.all
    end
    
  def list_movies
    @movie_list.each.with_index(1) do |movie, index|
    puts ""
    puts "#{index}. #{movie.name} ~ #{movie.url}"
    end
  end
        
#allow the user to choose a section of movies, all movies, or end
  def menu
    input = nil 
    while input != 'exit'
      puts "Enter a number for the movie you would like to see more information on or type list to see all of the top 100 movies."
    input = gets.strip.downcase
        
    if input.to_i > 0
          the_movie = @movie_list[input.to_i-1]
           puts ""
           puts "*********More information On ***********"
           puts "      Title: #{the_movie.name}"
           puts "      URL:   #{the_movie.url}"
           puts "      Genre: "#{the_movie.genre}
           puts "      Description: "#{the_movie.description}
           puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      elsif input == "list"
        list_movies
      else
        puts "Invalid Entry. Enter a number  to see more information on a particular movie, list to see all movies, or exit to leave."
      end
    end
  end
    
    def goodbye
      puts "Thank you for visiting.  Check back with us when it is time to watch another movie!"
    end 

  

end

