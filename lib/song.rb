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

# iterate over the @@genres array and populate a hash with the key/value pairs. You will need to check to see if the hash already contains a key of a particular genre. If so, increment the value of that key by one, otherwise, create a new key/value pair.

# #group_by → an_enumerator
# Groups the collection by result of the block. Returns a hash where the keys are the evaluated result from the block and the values are arrays of elements in the collection that correspond to the key.

# If no block is given an enumerator is returned.

(1..6).group_by { |i| i%3 }   #=> {0=>[3, 6], 1=>[1, 4], 2=>[2, 5]}
  def self.genre_count
   @@genres.each_cons("rap" || "pop" || "rock")
    genre_baby.each do |genre|
      puts genre
    end
  end

  def self.artists
	  @@artists.uniq
  end
end