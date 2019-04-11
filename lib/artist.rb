require "pry"

class Artist
    
    attr_accessor :name
    
    @@all = []
    
    def initialize(name)
        @name=name
        @@all.push(self)
    end
    
    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            if song.artist == self
                song
            end
        end
        # binding.pry
    end
    
    def add_song(song)
        song.artist = self
    end
    
    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
    end
    
    def self.song_count
        # binding.pry
        total = 0
        Song.all.each do |x|
            total +=1
        end
        total
        
    end
    
end