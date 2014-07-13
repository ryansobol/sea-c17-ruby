# Section 5.6 on page 25
# 4 points
# Write a program that asks for a person’s favorite number. Have your program
# add 1 to the number, and then suggest the result as a bigger and better
# favorite number. (Do be tactful about it, though.)

print "You may have noticed, I'm a computer.  I compute things. Here, let me prove it.  What is your favorite number?"
x = gets.chomp
y = x.to_i + 1
best = y.to_s
puts  "As a computer I need to tell you that " + best + " is a larger than " + x + ". And I think we all know bigger is better." 
puts ''
puts "So...there's that."