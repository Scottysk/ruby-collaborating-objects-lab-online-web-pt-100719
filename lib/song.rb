class Song
  
  attr_reader :name
  
  def initialize(song_name)
    @name = song_name
  end
  
  
  def artist=(artist_obj)
    @artist = artist_obj
    artist_obj.songs.push(self)
  end
  
  
  
end