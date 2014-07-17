# Section 7.5 on page 49
# 4 points
#
# What if Grandma doesn’t want you to leave? When you shout BYE, she could
# pretend not to hear you. Change your previous program so that you have to
# shout BYE three times in a row. Make sure to test your program: if you shout
# BYE three times but not in a row, you should still be talking to Grandma.

puts "SAY SOMETHING, SONNY!"
bye_count = 0
while bye_count.to_i < 3
  input = gets.chomp
  if input == "BYE" && bye_count < 3
    bye_count = bye_count.to_i + 1
    puts "SAY AGAIN"
  end
  if input == "BYE" && bye_count == 3
    puts "NO, NOT SINCE 1938!"
  elsif input != "BYE"
    bye_count = 0
    puts "HUH!  SPEAK UP, SONNY!"
  end
end
