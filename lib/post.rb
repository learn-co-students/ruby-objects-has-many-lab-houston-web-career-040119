require_relative 'author.rb'

class Post

attr_accessor :title, :author

@@all = []

def initialize(title)
  @title = title
  @@all << self
end

def author_name
  #returns the name of the post's author
  if self.author == nil
    nil
  else
    self.author.name
  end
end

def self.all
  #returns an array of all class objects
  @@all
end

end
