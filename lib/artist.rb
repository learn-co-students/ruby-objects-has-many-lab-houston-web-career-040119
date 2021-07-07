class Artist

  attr_accessor :name, :songs

  @@all_artists = []

  def initialize(name)
    @name = name
    @songs = []
    @@all_artists << self
  end

  def add_song(song)
    @songs << song
    song.artist = self

  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end

  def self.song_count
    all_songs_count = 0
    @@all_artists.each do |artist|
      all_songs_count += artist.songs.count
    end
    all_songs_count
  end

end
