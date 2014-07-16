# Section 7.5 on page 49
# 4 points
#
# Write a program that prints out the lyrics to that beloved classic,
# "99 Bottles of Beer on the Wall."

bottles = 99

for i in 0..98

  # for 1 beer on the wall
  if bottles == 2
  puts "99 Bottles of beer on the wall, 99 bottles of beer!"
  bottles = bottles - 1
  puts "Take one down pass it around, no more bottles of beer on the wall.\n\n"

  # for no bottles of beer
  elsif bottles == 1
  puts "No more bottles of beer on the wall, no more bottles of beer!"
  puts "Go to the store and but some more 99 bottles of beer on the wall.\n\n"

  # any other case
  else
  puts "99 Bottles of beer on the wall, 99 bottles of beer!"
  bottles = bottles - 1
  puts "Take one down pass it around, #{bottles} bottles of beer on the wall.\n\n"

  end

end
