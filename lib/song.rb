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
def self.count 
end          #self.name.uniq.count didn't work	/#returns array total number of unique songs

def self.genres
	@@genres.uniq 	
end
def self.artists
	@@artists.uniq 
end

end