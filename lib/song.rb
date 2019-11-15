  require 'pry'
  
  class Song
attr_accessor :name, :artist, :genre	
@@count = 0  
@@genres = [ ]  
@@artists = []	

  def initialize (name, artist, genre)
  @name = name 	
  @artist = artist
	@genre = genre
  @@count +=1	
  @@genres << @@genre_count.to_s << genre 
  @@artists << artist 
 	end  

  def self.count 
  @@count
  end          

  def self.genres
	@@genres.uniq
  end

  def self.genre_count
     self.genres
  end

  def self.artists
	  @@artists.uniq
  end

  end

# my_song = song.new
# my_song.instance_method

# Song.count
# # => 90