require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Joe", last_name: "Doe", hourly_rate: 15)
@store1.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 19)

@store2.employees.create(first_name: "John", last_name: "Adams", hourly_rate: 20)
@store2.employees.create(first_name: "Jenn", last_name: "Bob", hourly_rate: 15)

puts Employee.where(store_id: 1).count
puts Employee.where(store_id: 2).count

# Your code goes here ...
