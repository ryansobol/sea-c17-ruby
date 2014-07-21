# Section 7.5 on page 49
# 4 points
#
# Write a program that prints out the lyrics to that beloved classic,
# "99 Bottles of Beer on the Wall."
#
# "99 Bottles of Beer on the Wall." Here's what the output should look like:
#
# 99 bottles of beer on the wall, 99 bottles of beer!
# Take one down, pass it around, 98 bottles of beer on the wall!
# 98 bottles of beer on the wall, 98 bottles of beer!
# Take one down, pass it around, 97 bottles of beer on the wall!
# ...
# 2 bottles of beer on the wall, 2 bottles of beer!
# Take one down, pass it around, 1 bottle of beer on the wall!
# 1 bottle of beer on the wall, 1 bottle of beer!
# Take one down, pass it around, no more bottles of beer on the wall!

bottles_of_beer = 99
verse1 = "bottles of beer on the wall!"
verse2 = "bottles of beer!"
verse3 = "Take one down, pass it around,"
verse4 = "bottle of beer!"
verse5 = "no more bottles of beer on the wall!"
verse6 = "bottle of beer on the wall"
while bottles_of_beer > 1
    puts "#{bottles_of_beer} #{verse1}, #{bottles_of_beer} #{verse2}"
    bottles_of_beer = bottles_of_beer - 1
    puts "#{verse3} #{bottles_of_beer} #{verse1}"
end
while bottles_of_beer > 0
    puts "#{bottles_of_beer} #{verse6}, #{bottles_of_beer} #{verse4}"
    bottles_of_beer = bottles_of_beer -1
    puts "#{verse3} #{verse5}"

while bottles_of_beer > 0
  puts "#{bottles_of_beer} bottles of beer on the wall"
  puts "#{bottles_of_beer} bottles of beer"
  puts "Take one down pass it around"
  bottles_of_beer -= 1
  puts "#{bottles_of_beer} bottles of beer on the wall"
  puts

end
# No more bottles of beer on the wall, no more bottles of beer!
# Go to the store and buy some more, 99 bottles of beer on the wall!

