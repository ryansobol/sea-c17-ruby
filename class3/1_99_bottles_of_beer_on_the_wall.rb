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

bottles = 99
bottle_plural = "bottles"

while true
  puts "#{bottles} #{bottle_plural} of beer on the wall,"\
       " #{bottles} #{bottle_plural} of beer!"
  print "Take one down, pass it around, "

  bottles -= 1

  if bottles == 1
    bottle_plural = "bottle"
  elsif bottles == 0
    break
  end

  puts "#{bottles} #{bottle_plural} of beer on the wall!"
end

puts "no more bottles of beer on the wall!"
