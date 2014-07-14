# Section 5.6 on page 25
# 4 points
#
# Write a program that asks for a person’s favorite number. Have your program
# add 1 to the number, and then suggest the result as a bigger and better
# favorite number. (Do be tactful about it, though.)

print "Would you please tell me your favorite number? "
num = gets.chomp
num = num.to_i + 1

puts "I would like to recommend your favorite number actually be " + num.to_s + "... Its just a little better."
