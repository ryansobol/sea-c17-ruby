# Section 7.5 on page 49
# 4 points
#
# Write a program that prints out the lyrics to that beloved classic,
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
