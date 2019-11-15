class Song
attr_accessor :name, :artist, :genre	
@@count = 0  
@@genres = [] 
@@artists = []	
@@genre_count << @@genres.count
def initialize (name, artist, genre)
  @name = name 	
  @artist = artist
	@genre = genre
  @@count +=1	
  @@genres << genre 
  @@artists << artist 
  @@genre_count << @@genres.count
 	end  
 	
 def instance_method 
   self
 end

def self.count 
  @@count
end          #self.name.uniq.count didn't work	/#returns array total number of unique songs

def self.genres
	@@genres.uniq 	
end
def self.artists
	@@artists.uniq 
end

end

# my_song = song.new
# my_song.instance_method

# Song.count
# # => 90