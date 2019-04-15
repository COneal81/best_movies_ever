class BestMoviesEver::Movie

  attr_accessor :name  
  #:url
  
  @@all = []

  def initialize(name)#url
    @name = name 
    # @url = url
    @@all << self  #saves and remembers the object
  end
  
  def self.all
    @@all 
  end
end

