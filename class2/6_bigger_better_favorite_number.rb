# Section 5.6 on page 25
# 4 points
# Write a program that asks for a person’s favorite number. Have your program
# add 1 to the number, and then suggest the result as a bigger and better
# favorite number. (Do be tactful about it, though.)

puts 'Hi! What is your favorite number, if you don\'t mind me asking?'
old_num = gets.chomp

new_num = old_num.to_i + 1

puts 'You know what? I think ' + new_num.to_s + ' should be you\'re new favorite number instead!'


