require "pry"
class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    save
  end
  def save
    @@all << self
  end


  def self.all
    @@all
  end
  def artist_name=(artist)
    @artist = artist
    artist.odd_song(self) unless artist.songs.include?(self)
  end

  def self.new_by_filename(filename)
    new_song = filename.split(" - ")[1]
    new_song.name = Song.new

    #new_instance.name = Artist.new
    #new_instance
    #song = Artist.new(name)
  end


  #def artist_name=(name_string)
  #    song_artist = Artist.find_or_create_by_name(name_string)
  #     @artist = song_artist
  #    @artist.add_song(self)
  #end

end
