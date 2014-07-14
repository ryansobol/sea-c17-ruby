# Section 5.6 on page 25
# 4 points
# Write a program that asks for a person’s first name, then middle, and then
# last. Finally, it should greet the person using their full name.

puts "Hello world, please tell me your first name:"
fname = gets.chomp 

puts "Well done, please tell me your middle name:"
mname = gets.chomp

puts "Awesome, please tell me your last name:"
lname = gets.chomp

puts "So nice to meet you " + fname + " " + mname + " " + lname + "."