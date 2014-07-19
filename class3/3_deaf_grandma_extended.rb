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
  puts "HUH?! SPEAK UP, SONNY!"

  if statement == "BYE"
    i += 1
  elsif statement == statement.upcase
    i = 0
    puts 'NO, NOT SINCE 19' + rand(30..51).to_s + '!'
  end
end
