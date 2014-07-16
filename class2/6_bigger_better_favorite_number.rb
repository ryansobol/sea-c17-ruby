# Section 5.6 on page 25
# 4 points
#
# Write a program that asks for a person’s favorite number. Have your program
# add 1 to the number, and then suggest the result as a bigger and better
# favorite number. (Do be tactful about it, though.)

puts "Hello, what is your favorite number?"
n = gets.chomp
puts "#{n} seems a bit small, why not #{n.to_i+1}?"
