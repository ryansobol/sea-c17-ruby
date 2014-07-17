# Section 7.5 on page 49
# 4 points
#
# What if Grandma doesn’t want you to leave? When you shout BYE, she could
# pretend not to hear you. Change your previous program so that you have to
# shout BYE three times in a row. Make sure to test your program: if you shout
# BYE three times but not in a row, you should still be talking to Grandma.

print "Type your message to Grandma here: "
speak = gets.chomp
bye_count = 0

while bye_count < 3
  puts "HUH?! SPEAK UP, SONNY!"
  speak = gets.chomp
  if speak == "BYE"
    bye_count += 1
  else bye_count = 0
  end
end

puts "YOU DON'T LOVE YOUR GRANDMA? OKAY, WELL GOODBYE THEN SONNY."
puts "PLEASE TELL YOUR BROTHER HE WAS ALWAYS MY FAVORITE GRANDSON."
