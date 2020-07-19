require'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def Song.create
    @@all << self
    self
    binding.pry
  end
  def self.all
    @@all
  end
 
  def save
    self.class.all << self
  end
 
end