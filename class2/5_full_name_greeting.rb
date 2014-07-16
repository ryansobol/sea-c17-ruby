# Section 5.6 on page 25
# 4 points
# Write a program that asks for a person’s first name, then middle, and then
# last. Finally, it should greet the person using their full name.

print "What's your first name? "
first_name = gets.chomp

print "What's your middle name? "
middle_name = gets.chomp

print "What's your last name? "
last_name = gets.chomp

puts "Hello #{first_name} #{middle_name} #{last_name}. What's up G?"
