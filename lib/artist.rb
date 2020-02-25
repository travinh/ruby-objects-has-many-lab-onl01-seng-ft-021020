class Artist 
  
  attr_accessor :name
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    puts @songs
  end
  
  def songs 
    @songs
    puts songs
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end
  
  def self.song_count
    songs = Song.all
    count= 0 
    songs.each do |song|
      count+=1 
    end 
    count
  end
  
end