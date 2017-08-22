# we want a list of songs
# those songs should have an artist and a genre

class Song
  attr_accessor :name, :genre, :artist_name

  def initialize(name, genre, artist_name)
    @name = name
    @genre = genre
    # reference to the artist
    @artist_name = artist_name
  end

  def self.all
    ObjectSpace.each_object(self).to_a
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


puts "BEFORE: #{Song.all}"

# songs = ["shake dat ass", "luke da best"]
song1 = Song.new("merry xmas", "dark", "tupac")
song2 = Song.new("happy bday", "trance", "beethoven")
# songs = [song1, song2]
songs = Song.all

puts "AFTER: #{Song.all}"


def generate_artists(songs)
  artist1 = Artist.new("luke", songs)
  # puts artist1.inspect
  # puts artist1.name # getter
  puts "PLEASE ENTER SONG NAME YOU'D LIKE TO SEE THE GENRE OF: "
  input = gets.chomp.downcase
  i = 0
  songs.each do |song|
    # puts "#{song.inspect} has index in array of #{index}"
    if input == song.name
      puts song.genre
      # puts song.genre=("blahblah")
    end
  end
  # # modifications to the artist
  # artist1.name=("abc") # setter
  # new_songs = ["gbbg", "da "]
  # puts artist1.songs=(new_songs)

  puts artist1.inspect
  # puts artist1.methods
  artist1.name
end

output = generate_artists(songs)
puts output
