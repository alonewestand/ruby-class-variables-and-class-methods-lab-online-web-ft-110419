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
    genre_hash = {}
  @@genres.each do |g|
    if genre_hash[g]
        genre_hash[g] += 1
      else
      genre_hash[g] = 1 
    end
  end

  def self.artists
	  @@artists.uniq
  end
end