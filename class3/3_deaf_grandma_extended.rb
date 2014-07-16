# Section 7.5 on page 49
# 4 points
#
# What if Grandma doesn’t want you to leave? When you shout BYE, she could
# pretend not to hear you. Change your previous program so that you have to
# shout BYE three times in a row. Make sure to test your program: if you shout
# BYE three times but not in a row, you should still be talking to Grandma.

puts "SAY SOMETHING, SONNY!"
year_rand = rand(1938..1950)
bye_count = 0
while bye_count < 3
  input = gets.chomp
  if input == "BYE" && bye_count < 3
    puts "SAY AGAIN"
    bye_count = bye_count.to_i + 1
  elsif input == "BYE" && bye_count == 3
    puts "NO, NOT SINCE #{year_rand}!"
  elsif input != "BYE"
    puts "HUH!  SPEAK UP, SONNY!"
    bye_count = 0
  end
end
