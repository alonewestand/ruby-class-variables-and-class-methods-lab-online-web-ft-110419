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


  def self.genre_count
    @@genres.each do |genre|
      if genres.include?genre then
        genre_count = {genre => genre.count}
      end
    end
  end

  def self.artists
	  @@artists.uniq
  end
end