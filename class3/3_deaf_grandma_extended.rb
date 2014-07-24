# Section 7.5 on page 49
# 4 points
#
# What if Grandma doesn’t want you to leave? When you shout BYE, she could
# pretend not to hear you. Change your previous program so that you have to
# shout BYE three times in a row. Make sure to test your program: if you shout
# BYE three times but not in a row, you should still be talking to Grandma.
bye_count = 0

while bye_count < 3
  input = gets.chomp

  if input == input.upcase && input != "BYE"
    random_year = 1930 + rand(21)
    puts "NO, NOT SINCE #{random_year}!"
    bye_count = 0
  else
    if input == "BYE"
      bye_count += 1
    else
      bye_count = 0
    end

    puts "HUH!? SPEAK UP SONNY!"
  end
end

puts "OH, OK THEN. COME BACK SOON!"
