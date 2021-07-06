require_relative 'artist.rb'
require_relative 'song.rb'
require_relative 'post.rb'
require_relative 'artist.rb'

require 'pry'

#fake authors
al = Author.new("Al")
betty = Author.new ("Betty")
susan = Author.new("Susan")

#fake posts
a1 = al.add_post_by_title("A1")
b1 = al.add_post_by_title("B1")
a2 = susan.add_post_by_title("A2")
a3 = betty.add_post_by_title("A3")
b2 = susan.add_post_by_title("B2")

binding.pry

puts "TWEET."
