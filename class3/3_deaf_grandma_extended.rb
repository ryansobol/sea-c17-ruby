# Section 7.5 on page 49
# 4 points
#
# What if Grandma doesn’t want you to leave? When you shout BYE, she could
# pretend not to hear you. Change your previous program so that you have to
# shout BYE three times in a row. Make sure to test your program: if you shout
# BYE three times but not in a row, you should still be talking to Grandma.

i = 0

while i < 3
  statement = gets.chomp

  if statement == "BYE"
    i += 1
  else
    i = 0
  end

  if statement == statement.upcase
    puts "NO, NOT SINCE 19#{rand(30..50)}!"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end
