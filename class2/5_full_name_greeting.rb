# Section 5.6 on page 25
# 4 points
#
# Write a program that asks for a person’s first name, then middle, and then
# last. Finally, it should greet the person using their full name.

puts 'What\'s your first name?'
first_name = gets.chomp
puts 'What\'s your middle name?'
middle_name= gets.chomp
puts 'What\'s your last name?'
last_name = gets.chomp
full_name = first_name + ' ' + middle_name + ' ' + last_name
puts 'Hello ' + full_name
