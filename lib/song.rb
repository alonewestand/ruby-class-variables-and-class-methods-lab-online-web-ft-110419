class Song
attr_accessor :name, :artist, :genre	
@@count = 0  
@@genres = [] 
@@artists = []	
@@genre_count = []

def initialize (name, artist, genre)
  @name = name 	
  @artist = artist
	@genre = genre
  @@count +=1	
  @@genres << genre 
  @@artists << artist 
  @@genre_count[@@genres.each.count]
 	end  
 	
 def instance_method 
   self
 end

def self.count 
  @@count
end          

def self.genres
	@@genres.uniq 	
end

def self.genre_count
    
end

def self.artists
	@@artists.uniq 
end

end

# my_song = song.new
# my_song.instance_method

# Song.count
# # => 90