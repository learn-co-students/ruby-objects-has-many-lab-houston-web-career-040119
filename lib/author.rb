require "pry"

class Author
    
    attr_accessor :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all.push(self)
    end
    
    def posts
        Post.all.select do |post|
            post.author = self
        end
    end
    
    def add_post(post)
        post.author = self
    end
    
    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end
    
    def self.post_count
        total = 0
        Post.all.each do |x|
            total +=1
        end
        total
    end
    
    def self.all
        @@all
    end
        
end