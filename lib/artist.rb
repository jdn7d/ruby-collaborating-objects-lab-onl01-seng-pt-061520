class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
  def add_song(song)
    song.artist = self
    @songs << song
  end
  def songs
    Song.all.select {|s| s.artist == self }
  end
  def self.find_or_create_by_name(song)

    song.artist = self unless song.artist == self
  end
  def print_songs
    @songs.each {|s| puts s.name}
  end
end
