class BestMoviesEver::Movie

  attr_accessor :name, :url, :description, :genre, :rating
  
  @@all = []
  
  def initialize(attr_hash)
    @name = attr_hash[:name] 
    @url = attr_hash[:url]
    @@all << self  #saves and remembers the object
  end
 
  # def initialize(name, url)
  #   @name = name 
  #   @url = url
  #   @@all << self  #saves and remembers the object
  # end
  
  def self.all
    @@all 
  end
end

