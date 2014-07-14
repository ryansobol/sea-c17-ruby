# Section 6.2 on page 32
# 4 points
# Write an angry boss program that rudely asks what you want. Whatever you
# answer, the angry boss should yell it back to you and then fire you. For
# example, if you type in I want a raise, it should yell back like this:
#
# WHADDAYA MEAN "I WANT A RAISE"?!? YOU'RE FIRED!!

puts
puts "Can't you see I'm extremely busy right now?"
puts "What, in the name of God is so important that you needed to inturrupt me?"
print "Spit it out!  "
humble_request = gets.chomp
puts
puts 'YOU CAN\'T BE SERIOUS? "' + humble_request.upcase + '"!?!?!?'
puts "YOU ARE FIRED!  GET OUT! DON'T SHOW YOUR FACE AROUND HERE EVER AGAIN!!!"
puts
