class Song 
  attr_accessor :name, :artist, :genre
  @@all = []
  def initialize(name, artist=nil, genre=nil)
    @name = name
    if artist
      self.artist = artist
    end
    if genre
      self.genre = genre
    end
  end
  def self.all
    @@all
  end
  def save
    @@all << self
  end
  def self.destroy_all
    @@all = []
  end
  def self.create(name)
    song = Song.new(name)
    song.save
    song
  end
end