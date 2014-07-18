# Section 7.5 on page 49
# 4 points
#
# Write a program that prints out the lyrics to that beloved classic,
<<<<<<< HEAD
# "99 Bottles of Beer on the Wall."

beers = 100
verse = 0

while verse < 99
  verse += 1

  puts "#{beers - verse} bottles of beer on the wall,"
  puts "#{beers - verse} bottles of beer,"
  puts "You take one down and pass it around,"

  if verse == 99
    left = 'No more'
  else
    left = beers - verse - 1
  end

  puts "#{left} bottles of beer on the wall!"
  puts
end

puts "No more bottles of beer on the wall,"
puts "No more bottles of beer,"
puts "Go to the store and buy some more,"
puts "99 bottles of beer on the wall..."
=======
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
>>>>>>> upstream/master
