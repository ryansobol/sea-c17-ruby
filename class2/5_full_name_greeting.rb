# Section 5.6 on page 25
# 4 points
#
# Write a program that asks for a person’s first name, then middle, and then
# last. Finally, it should greet the person using their full name.

puts "Pardon the intrusion but could you please afford me the privaledge of your first name? "
first_name = gets.chomp
puts "Hmm, I'm a computer so it may come as no surprise to you, but I know a lot of #{first_name}s. Could I perhaps trouble you for your last name as well?"
last_name = gets.chomp
puts "Well, over the years I've known a few of those too. If it wouldn't be over stepping my boundries, would you please advise me of your middle name?"
middle_name = gets.chomp

puts "Excellent! Welcome to the terminal #{first_name} #{middle_name} #{last_name}! I think you'll find it comfortable here."
