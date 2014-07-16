# Section 7.5 on page 49
# 4 points
#
# Write a program that prints out the lyrics to that beloved classic,
# "99 Bottles of Beer on the Wall."

bottles = 99

while bottles >= 0
  # for 1 bottle of beer
  if bottles == 1
    puts "1 bottle of beer on the wall, 1 bottle of beer!"
    bottles = bottles - 1
    puts "Take one down pass it around, no more bottles of beer on the wall.\n\n"
  # for no bottles of beer
  elsif bottles == 0
    puts "No more bottles of beer on the wall, no more bottles of beer!"
    bottles = bottles - 1
    puts "Go to the store and buy some more, 99 bottles of beer on the wall.\n\n"
  # any other case
  else
    puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer!"
    bottles = bottles - 1
    puts "Take one down pass it around, #{bottles} bottles of beer on the wall.\n\n"
  end
end
