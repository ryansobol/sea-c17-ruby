# Section 7.5 on page 49
# 4 points
#
# What if Grandma doesn’t want you to leave? When you shout BYE, she could
# pretend not to hear you. Change your previous program so that you have to
# shout BYE three times in a row. Make sure to test your program: if you shout
# BYE three times but not in a row, you should still be talking to Grandma.

puts "You have arrived at Grandma's house. Be friendly."

goodbye = 0
while goodbye < 3

  puts "What would you like to say to Grandma?"
  conversation = gets.chomp
  if conversation == conversation.upcase
    puts "NO, NOT SINCE #{(rand(21) + 1930)}!"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end

  if conversation == "BYE"
    goodbye = goodbye + 1
  else
    goodbye = 0
  end
end

puts "OH, I GUESS YOU'RE GOING TO GO NOW. THAT'S OK I'LL JUST PLAY SOLATAIRE..."
