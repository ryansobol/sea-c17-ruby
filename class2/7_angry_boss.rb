# Section 6.2 on page 32
# 4 points
# Write an angry boss program that rudely asks what you want. Whatever you
# answer, the angry boss should yell it back to you and then fire you. For
# example, if you type in I want a raise, it should yell back like this:
#
# WHADDAYA MEAN "I WANT A RAISE"?!? YOU'RE FIRED!!

puts "What the hell do you want?"
question = gets.chomp
response = 'Wat the F**K? ' + question + ' You are soo Fired!'
puts response.upcase
