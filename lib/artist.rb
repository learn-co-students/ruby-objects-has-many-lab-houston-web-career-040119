require 'pry'
require_relative 'song.rb'

class Artist

attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    #returns an array of all the artist's songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    #takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist
    song.artist = self
  end

  def add_song_by_name(name)
    #takes in an argument of a song name, creates a new song with it and associates the song and artist
    new_song = Song.new(name)
    new_song.artist = self
  end

  def self.song_count
    #counts all songs by one artist
    Song.all.count {|song| song}
  end

  def self.all
    #creates a list of all artists
    @@all
  end

end
