# Section 6.2 on page 32
# 4 points
#
# Write an angry boss program that rudely asks what you want. Whatever you
# answer, the angry boss should yell it back to you and then fire you. For
# example, if you type in I want a raise, it should yell back like this:
#
# WHADDAYA MEAN "I WANT A RAISE"?!? YOU'RE FIRED!!

print "WHAT exactly do you want, my little pathetic minion? "

request = gets.chomp.to_s

puts request
request.upcase!

puts "WHADDAYA MEAN \"#{request}\"?!? YOU'RE FIRED, TOOL!! "
