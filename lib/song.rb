require "pry"
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)    
    self.name = name
    self.artist = artist
    self.genre = genre
    
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.tally
  end

  def self.artist_count
    @@artists.tally
  end
end

# Song.new("Lucifer", "Jay-Z", "rap")
# Song.new("99 Problems", "Jay-Z", "rap")
# Song.new("hit me baby one more time", "Brittany Spears", "pop")
# binding.pry