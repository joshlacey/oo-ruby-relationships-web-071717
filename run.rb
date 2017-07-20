require 'pry'
require_relative './tweet'
require_relative './user'



user = User.new('coffee_dad')

user.post_tweet('best coffee')

user.tweets

binding.pry

#Pry.start not working for some reason, may not take into account local variables and method calls??
