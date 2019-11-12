require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store = Store.create(
  name:"Surrey", 
  annual_revenue: 224000, 
  mens_apparel: false, 
  womens_apparel: true  
)
store = Store.create(
  name:"Whistler", 
  annual_revenue: 1900000, 
  mens_apparel: true, 
  womens_apparel: false  
)
store = Store.create(
  name:"Yaletown", 
  annual_revenue: 430000, 
  mens_apparel: true, 
  womens_apparel: true  
)

@mens_apparel = Store.where(mens_apparel: true)

@mens_apparel.map { |store| p store.name, store.annual_revenue}

@womens_apparel = Store.where(
  womens_apparel: true).where("annual_revenue < ?", 1000000)