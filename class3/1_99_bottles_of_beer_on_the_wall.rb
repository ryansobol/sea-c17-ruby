# Section 7.5 on page 49
# 4 points
#
# Write a program that prints out the lyrics to that beloved classic,
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

num_bottles = 10  #To start with 99, change 10 to 99.

while num_bottles > 2
	puts "#{num_bottles} bottles of beer on the wall, #{num_bottles} bottles of beer!"
	puts "Take one down, pass it around, #{num_bottles - 1} bottles of beer!"
	num_bottles -= 1
end

puts "2 bottles of beer on the wall, 2 bottles of beer!"
puts "Take one down, pass it around, 1 bottle of beer on the wall!"
puts "1 bottle of beer on the wall, 1 bottle of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"
puts "No more bottles of beer on the wall, no more bottles of beer!"
puts "Go to the store and buy some more, 99 bottles of beer on the wall!"
