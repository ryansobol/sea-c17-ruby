# Section 6.2 on page 32
# 4 points
#
# Write an angry boss program that rudely asks what you want. Whatever you
# answer, the angry boss should yell it back to you and then fire you. For
# example, if you type in I want a raise, it should yell back like this:
#
# WHADDAYA MEAN "I WANT A RAISE"?!? YOU'RE FIRED!!

puts 'Your boss RUDELY asks you: WHAT DO YOU WANT CHUMP?!'
q_to_boss = gets.upcase.chomp

puts 'WHADDAYA MEAN "' +  q_to_boss + '"?!? YOU\'RE FIRED!!!'



