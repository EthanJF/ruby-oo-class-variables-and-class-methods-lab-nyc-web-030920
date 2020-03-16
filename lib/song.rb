class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@artists << artist
    @@genres << genre
    @@count += 1
    
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    genre_count_hash = {}
    
    Song.all.each do |song|
      genre_count_hash[song.genre] ? genre_count_hash[song.genre] += 1 : genre_count_hash = 1
    end
    
    genre_count_hash
  end

  def self.artist_count
    artist_count_hash = {}
    
    Song.all.each do |song|
      artist_count_hash[song.artist] ? artist_count_hash[song.artist] += 1 : artist_count_hash = 1
    end
    
    artist_count_hash
  end
  
end