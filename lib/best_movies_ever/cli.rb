class BestMoviesEver::CLI 
  
  
  def call 
    puts "Welcome to Best Movies Ever CLI, home to the top 100 movies!!".yellow.bold
    BestMoviesEver::Scraper.scrape_rt
    movie_list
    list_movies
    menu
  end
    
    
  def movie_list
    @movie_list = BestMoviesEver::Movie.all
  end
    
    
  def list_movies
    @movie_list.each.with_index(1) do |movie, index|
      puts "\n#{index}. #{movie.name}".green
    end
  end
     
     
  def menu #allow the user to choose a movie, a list, or end
    input = nil 
    while input != 'exit' #while contrant will continue executing the block as long as the conditions are true
      puts "Enter a number for the movie you would like to see more information on, type list to see all of the top 100 movies, or exit to leave.".yellow.bold
    input = gets.strip.downcase
      if input.to_i > 0 && input.to_i <= 100
        the_movie = @movie_list[input.to_i-1]
        show_movie_details(the_movie)
      elsif input == "list"
        list_movies
      elsif input == "exit"
        goodbye
      else
        puts "\nInvalid Entry.\n".red.bold
      end
    end
  end
    
  def show_movie_details(the_movie)
    BestMoviesEver::Scraper.scrape_details(the_movie) unless !!the_movie.description
      puts "\n* * * * * * * * * * * * * * ~~  Movie Information ~~ * * * * * * * * * * * * * *\n".bold.red
      puts "  Title: #{the_movie.name}\n".light_green
      # puts "      URL:   #{the_movie.url}"
      puts "  TV Rating: #{the_movie.rating}\n".light_blue
      puts "  Genre: #{the_movie.genre}\n".light_magenta
      puts "  Description: #{the_movie.description}".light_cyan
      puts "\n* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\n".bold.red
  end
  
    
  def goodbye
    puts "Thank you for visiting!".bold.yellow 
    puts "Check back with us when it is time to watch another movie!".bold.yellow
  end 
end

