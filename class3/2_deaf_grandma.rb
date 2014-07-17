# Section 7.5 on page 49
# 4 points
#
# Whatever you say to Grandma (whatever you type in), she should respond with
# this:
#
# HUH?! SPEAK UP, SONNY!
#
# unless you shout it (type in all capitals). If you shout, she can hear you
# (or at least she thinks so) and yells back:
#
# NO, NOT SINCE 1938!
#
# To make your program really believable, have Grandma shout a different year
# each time, maybe any year at random between 1930 and 1950. (This part is
# optional and would be much easier if you read the section on Ruby’s random
# number generator on page 33.) You can’t stop talking to Grandma until you
# shout BYE.
#

puts "You have arrived at Grandma's house. Be friendly."

while true
  puts "What would you like to say to Grandma?"
  conversation = gets.chomp
  if conversation == "BYE"
    puts "GOODBYE DEAR!"
    break
  elsif conversation == conversation.upcase
    puts "NO, NOT SINCE #{(rand(21) + 1930)}!"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end
