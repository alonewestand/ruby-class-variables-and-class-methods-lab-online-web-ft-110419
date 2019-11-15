class Song
attr_accessor :name, :artist, :genre	
@@count = 0  
@@genres = [] 
@@artists = []	

def initialize (name, artist, genre)
  @name = name 	
  @artist = artist
	@genre = genre
  @@count +=1	
  @@genres << genre 
  @@artists << artist 
 	end  
 	
 def instance_method 
   self
 end

def self.count 
  self
end          #self.name.uniq.count didn't work	/#returns array total number of unique songs

def self.genres
	@@genres.uniq 	
end
def self.artists
	@@artists.uniq 
end

end

my_song = song.new
my_song.instance_method

Song.count