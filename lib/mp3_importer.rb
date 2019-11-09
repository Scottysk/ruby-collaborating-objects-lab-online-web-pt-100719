class MP3Importer
  
  attr_reader :path
  
  def initialize(music_path)
    @path = music_path
  end
  
  def files
    Dir.children(@path)
  end
  
  def import
    self.files.each {|filename| Song.new_by_file_name(filename)}
    
  end
  
  
end