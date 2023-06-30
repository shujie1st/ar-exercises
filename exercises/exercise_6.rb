require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Betty", last_name: "Walker", hourly_rate: 50)
@store1.employees.create(first_name: "Jennifer", last_name: "Allen", hourly_rate: 70 )

pp @store1.employees

@store2.employees.create(first_name: "Michael", last_name: "Scott", hourly_rate: 50)
@store2.employees.create(first_name: "Sarah", last_name: "Lee", hourly_rate: 80)
@store2.employees.create(first_name: "Kimberly", last_name: "Green", hourly_rate: 60)

pp @store2.employees

