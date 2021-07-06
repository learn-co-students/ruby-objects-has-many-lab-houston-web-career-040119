class Author

attr_accessor :name

@@all = []

def initialize (name)
  @name = name
  @@all << self
end

def posts
  #creates an array of all author's posts
  Post.all.select {|post| post.author == self}
end

def add_post(post)
  #takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author
  post.author = self
end

def add_post_by_title(post_title)
  #takes in an argument of a post title, and creates a new post with it and associates the post and author
  new_post = Post.new(post_title)
  new_post.author = self
end

def self.post_count
  #is a class method that returns the total number of posts associated to all existing authors
  Post.all.count {|post| post}
end

def self.all
  #returns an array of all class variables
  @@all
end

end
