require'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.all
    @@all
  end
 
  def save
    self.class.all << self
  end
  
  def self.create
    song = Song.new
    song.save
    song
  end
  
  def self.new_by_name(songname)
    song = self.new
    song.name = songname
    song
  end
  
  def self.create_by_name(songname)
    song = self.new
    song.name = songname
    song.save
    song
  end
 
end