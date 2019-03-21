#The CLI is the controller for the user and the users interactions.  It should take in the users input.
class BestMoviesEver::CLI 
  
  def call 
    puts "Welcome to Movie Studio, home to the top rated movies!!"
    list_movies
    menu
    goodbye
  end


  def list_movies
    
    @movie = BestMoviesEver::Movie.list
    @movie.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.name} ~ #{movie.genre}"
    end
  end
        
#allow the user to choose a section of movies, all movies, or end
  def menu
    input = nil 
    while input != 'exit'
      puts "Enter a number for the movie you would like to see more information on;"
    input = gets.strip.downcase
        
    if input.to_i > 0
          the_movie = @movie[input.to_i-1]
           puts "#{the_movie.name}"
           puts "      Genre: #{the_movie.genre}"
           puts "      Rated: #{the_movie.rating}"
           puts "      Description: #{the_movie.description}"
      elsif input == "list"
        list_movies
      else
        puts "Invalid Entry."
    end
    
    def goodbye
      puts "Thank you for visiting.  Check back with us when it is time to watch another movie!  Have a great day and we look forward to seeing you again!!!"
    end 
end
end
end

