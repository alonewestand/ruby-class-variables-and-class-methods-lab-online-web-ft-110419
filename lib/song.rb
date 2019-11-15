  require 'pry'
  
  class Song
attr_accessor :name, :artist, :genre	
@@count = 0  

#genres returns each genre one time, how do I count the number of times
#for each genre?

@@genres = [ ]
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
  @@count
  end          

  def self.genres
	@@genres.uniq
  end

    def self.genre_count
   @@genres.group_by { |g| g.count}
   binding.pry
  end

  def self.artists
	  @@artists.uniq
  end
end