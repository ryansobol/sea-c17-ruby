# Section 7.5 on page 49
# 4 points
#
# Write a program that prints out the lyrics to that beloved classic,
# "99 Bottles of Beer on the Wall."

bottles_of_beer = 99
while bottles_of_beer > 0
  puts "#{bottles_of_beer} bottles of beer on the wall"
  puts "#{bottles_of_beer} bottles of beer"
  puts "Take one down pass it around"
  bottles_of_beer = bottles_of_beer - 1
  puts "#{bottles_of_beer} bottles of beer on the wall"
  puts ''
end
