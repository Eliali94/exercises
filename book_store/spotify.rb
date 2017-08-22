# we want a list of songs
# those songs should have an artist and a genre

class Song
  def initialize(name, genre, artist)
    @name = name
    @genre = genre
    # reference to the artist
    @artist = artist
  end
end

# like a User
class Artist
  # automatically generates both the getters and setters
  # for each of the symbols/attributes given
  attr_accessor :name, :songs

  def initialize(name, songs)
    @name = name
    # has many songs
    @songs = songs
  end

  # # getters
  # def name
  #   @name
  # end
  #
  # # setters
  # def name=(new_name)
  #   @name = new_name
  # end
  #
  # # getters
  # def songs
  #   @songs
  # end
  #
  # # setters
  # def songs=(new_songs)
  #   @songs = new_songs
  # end
end

class Genre
  def initialize(name)
    @name = name
  end
end

songs = ["shake dat ass", "luke da best"]

artist1 = Artist.new("luke", songs)
puts artist1.inspect
puts artist1.name # getter
artist1.name=("abc") # setter
new_songs = ["gbbg", "da "]
puts artist1.songs=(new_songs)
puts artist1.inspect
# puts artist1.methods
