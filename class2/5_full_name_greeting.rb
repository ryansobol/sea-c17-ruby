# Section 5.6 on page 25
# 4 points
#
# Write a program that asks for a person’s first name, then middle, and then
# last. Finally, it should greet the person using their full name.

puts 'Guten tag! I\'m HAL, may I ask for your first name?'
first_name = gets.chomp

puts 'Nice to meet you, ' + first_name + '. What is your middle name?'
middle_name = gets.chomp

puts 'And your last name?'
last_name = gets.chomp

puts first_name + ' ' + middle_name + ' ' + last_name + '. That has such a nice ring to it!'
