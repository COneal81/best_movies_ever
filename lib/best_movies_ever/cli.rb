#The CLI is the controller for the user and the users interactions.  It should take in the users input.
class BestMoviesEver::CLI 
  
  def call 
    menu
    goodbye
  end


  def list_movies
    @movie = BestMoviesEver::Movie.list
  
  end


  def rating
        puts "Please select a rating"
        puts "G"
        puts "PG"
        puts "PG-13"
        puts "NC-17"
        puts "R"
        
        selection = gets.strip
          case selection
            when 'G'
              puts "Lists all of the G rated top 100 movies"
            when 'PG'
              puts "Lists all of the PG rated top 100 movies"
            when 'PG-13'
              puts "Lists all of the PG-13 rated top 100 movies"
            when 'NC-17'
              puts "Lists all of the NC-17 rated top 100 movies"
            when 'R'
              puts "Lists all of the R rated top 100 movies"
            else puts "Invalid Entry"
          end
        end
        
        
      def genre
        puts "Please select a genre"
        puts "Action & Adventure"
        puts "Comedy"
        puts "Drama"
        puts "Fantasy"
        puts "Science Fiction"
          
          choice = gets.strip
          
            case choice
             when "Action & Adventure"
               puts "All of the action and adventure movies"
             when "Comedy"
               puts "All of the Comedy movies"
             when "Drama"
               puts "All of the Drama movies"
             when "Fantasy"
               puts "All of the Fantasy movies"
             when "Science Fiction"
               puts "All of the Science Fiction movies"
             else
               puts "Invalid Entry"
             end
          menu
        end
        
#allow the user to choose all movies, movies by rating, movies by genre
  def menu
    input = nil 
    while input != 'exit'
    puts "Welcome to Movie Studio!  Please select a number of the movies that you would like to see;"
    puts <<-DOC
      1. View all top 100 movies.
      2. View top movies by rating.
      3. View top movies by genre.
      DOC
    
    input = gets.strip
    
    case input 
      when '1'
        list_movies
      when '2' #Make a seperate method
        rating
      when '3'
        genre
    end
    
    def goodbye
      puts "Thank you for visiting.  Check back with us when it is time to watch another movie!  Have a great day and we look forward to seeing you again!!!"
    end 
end
end
end
