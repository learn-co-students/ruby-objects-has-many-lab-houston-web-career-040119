class Song

attr_accessor :name, :artist

@@all = []

def initialize (name)
  @name = name
  @@all << self
end

def artist_name
  #knows the name of its artist
   if self.artist == nil
     return nil
   else
     self.artist.name
   end
end

def self.all
  #creates a list of all songs
  @@all
end

end
