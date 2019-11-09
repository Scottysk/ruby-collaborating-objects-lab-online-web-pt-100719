class Song
  
  attr_accessor :name
  attr_reader :artist
  
  def initialize(song_name)
    @name = song_name
  end
  
  
  def artist=(artist_obj)
    @artist = artist_obj
    artist_obj.songs.push(self)
  end
  
  def self.all
  
  
  
end