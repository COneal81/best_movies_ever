require "nokogiri"
require "open-uri"
require "pry"

require_relative "./best_movies_ever/version"
require_relative "./best_movies_ever/cli"
require_relative "./best_movies_ever/movie"

module BestMoviesEver
  class Error < StandardError; end
  # Your code goes here...
end
