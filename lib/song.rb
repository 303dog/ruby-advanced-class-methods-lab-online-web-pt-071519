class Song
  attr_accessor :name, :artist_name, :string_song
  @@all = []
  
  def self.create 
    s = self.new 
    s.save 
    s
  end 
 
  def self.create_by_name(string_song)
    s = self.new 
    s.name = string_song
    s.save 
    s
  end
 
  def self.new_by_name(string_song)
    s = self.new 
    s.name = string_song
    s
  end 
  
  def self.find_by_name(string_song)
    self.all.detect {|s| s.name == string_song}
  end
  
  
  
  
  def self.find_or_create_by_name(string_song)
  
    
     # This method will accept a string name for a song and either return a matching song instance with that name or create a new song with the name and return the song instance.

  end 






  def self.alphabetical
    self.all.sort_by { |s| s.name}
  end 
  
  def self.new_from_filename(mp3_formatted_file)
    c = self.new 
    c.name = mp3_formatted_file.split(/[^a-zA-Z\s]|\s-\s/)[1] 
    c.artist_name = mp3_formatted_file.split(/[^a-zA-Z\s]|\s-\s/)[0]
    c
  end 
  
  def self.create_from_filename(mp3_formatted_file)
    c = self.new 
    c.name = mp3_formatted_file.split(/[^a-zA-Z\s]|\s-\s/)[1] 
    c.artist_name = mp3_formatted_file.split(/[^a-zA-Z\s]|\s-\s/)[0]
    c.save
    c
  end 
 
  def self.all
    @@all
  end
 
  def save
    self.class.all << self
  end
  
  def self.destroy_all
    @@all = []
  end
 
end
