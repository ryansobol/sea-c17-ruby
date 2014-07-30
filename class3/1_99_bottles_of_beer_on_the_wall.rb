# Section 7.5 on page 49
# 4 points
#
# Write a program that prints out the lyrics to that beloved classic,
# "99 Bottles of Beer on the Wall."
i = 99
while i > 2
  puts "#{i} bottles of beer on the wall, #{i} bottles of beer!"
  i -= 1
  puts "Take one down, pass it around, #{i} bottles of beer on the wall!"
end

#for grammatical correctness when refering the the plurality of bottles
puts "2 bottles of beer on the wall, 2 bottles of beer!"
puts "Take one down, pass it around, 1 bottle of beer on the wall!"

puts "1 bottle of beer on the wall, 1 bottle of beer, take one down"
puts "Take one down, pass it around, no more bottles of beer on the wall!"

puts "No more bottles of beer on the wall, no more bottles of beer,"
puts "Go to the store and buy some more, 99 bottles of beer on the wall!"



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
# No more bottles of beer on the wall, no more bottles of beer!
# Go to the store and buy some more, 99 bottles of beer on the wall!
