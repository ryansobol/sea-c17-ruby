# Section 7.5 on page 49
# 4 points
#
# What if Grandma doesn’t want you to leave? When you shout BYE, she could
# pretend not to hear you. Change your previous program so that you have to
# shout BYE three times in a row. Make sure to test your program: if you shout
# BYE three times but not in a row, you should still be talking to Grandma.

puts "What's that, sonny?"
words = gets.chomp
bye_count = 0
while words

  if words == "BYE"
    bye_count += 1
  else
    bye_count = 0
  end

  if bye_count == 3
    puts "NICE TALKING TO YOU"
    break
  end

  if words == words.upcase
    year = rand(21) + 1930
    puts "NO, NOT SINCE #{year}"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end

  words = gets.chomp
end
