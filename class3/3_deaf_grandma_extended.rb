# Section 7.5 on page 49
# 4 points
#
# What if Grandma doesn’t want you to leave? When you shout BYE, she could
# pretend not to hear you. Change your previous program so that you have to
# shout BYE three times in a row. Make sure to test your program: if you shout
# BYE three times but not in a row, you should still be talking to Grandma.

count = 0
done = false

begin
  year = rand(1900..2014)
  puts "\nSay something to Grandma:"
  input = gets.chomp

  if input != "BYE" && input == input.upcase
    puts "\nNO, NOT SINCE #{year}!\n"
    count = 0
  elsif input == "BYE" && count == 2
    puts "\nBYE, SONNY\n"
    done = true
    count = count + 1
  elsif input == "BYE" && count < 2
    puts "..."
    count = count + 1
  else
    puts "\nHUH?! SPEAK UP, SONNY!\n"
    count = 0
  end
end while done == false
