
class Song
    
    attr_accessor :name, :artist
    @@all = []
    
    def initialize(name)
        @name = name
        @@all.push(self)
    end
    
    def add_artist(name)
        self.artist = name
    end
    
    def self.all
        @@all
    end
    
    def artist_name
        # if self.artist
        #     self.artist.name
        # end
        #     return nil
        # artist.name if artist
        
        if self.artist
            self.artist.name
        else
            return nil
        end
        
    end
    
end