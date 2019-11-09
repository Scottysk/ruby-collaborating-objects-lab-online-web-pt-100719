class Song
  
  attr_accessor :name
  attr_reader :artist
  
  @@all = []
  
  def initialize(song_name)
    @name = song_name
    @@all << self
  end
  
  
  def artist=(artist_obj)
    @artist = artist_obj
    artist_obj.songs.push(self)
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(new_filename)
    info = new_filename.split(" - ")
    name_for_name = info[1]
    song_obj = self.new(name_for_name)
    artist_obj = Artist.new(info[0])
    
  end
  
  
  
end