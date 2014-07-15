# Section 5.6 on page 25
# 4 points
# Write a program that asks for a person’s favorite number. Have your program
# add 1 to the number, and then suggest the result as a bigger and better
# favorite number. (Do be tactful about it, though.)

puts 'Hello! I really love numbers. What is your favorite number?'
favorite_number_string = gets
better_number = favorite_number_string.to_i + 1

puts ''
puts 'You know, ' + favorite_number_string.chomp + ' isn\'t bad.'
puts ''
puts better_number.to_s + ' is just a little bit better though, isn\'t it?'
puts ''
puts 'If you think about it, by definition ' + better_number.to_s + ' is a bigger, and therefore better, favorite number.'