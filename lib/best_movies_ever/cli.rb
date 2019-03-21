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
      puts "#{i}. #{movie.name}: Rating #{movie.rating}, Genre: #{movie.genre}, Description: #{movie.description}"
    end
  end
        
#allow the user to choose a section of movies, all movies, or end
  def menu
    input = nil 
    while input != 'exit'
      puts "Enter a number for the movie you would like to see more information on;"
    input = gets.strip
        
    case input 
      when '1'
          puts "Information on 1st movie."
      when "2"
          puts "Information on the 2nd movie"
      when "list"
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

