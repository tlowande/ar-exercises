require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "choose a story name"
print "> "

store = $stdin.gets.chomp

nextStory = Store.create(
  name:store 
)
p nextStory.errors.full_messages
