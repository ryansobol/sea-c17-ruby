# Section 5.6 on page 25
# 4 points
# Write a program that asks for a person’s favorite number. Have your program
# add 1 to the number, and then suggest the result as a bigger and better
# favorite number. (Do be tactful about it, though.)

print "What's your favorite number? "
n = gets.chomp.to_i

puts "#{n}... meh, I mean I GUESS that number is okay"

better_n = n + 1
# percent_better = (better_n - n) / n

puts "Hey, you know what, I think that #{better_n} is way better than your puny, pathetic little number"
