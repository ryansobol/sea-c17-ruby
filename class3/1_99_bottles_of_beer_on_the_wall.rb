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

# This code feels like I'm violating the DRY rule.
# Yet still kind of awesome, yes?
# For the record, my style before adding your output above kept my lines,
# save line 27 under 80 Characters. :)

def pluralize(word, count = nil)
  if count == 0
    "no more #{word}s"
  elsif count == 1
    "#{count} #{word}"
  else
    "#{count} #{word}s"
  end
end

bottles_of_beer = 99

while bottles_of_beer > 0
  prefix = pluralize("bottle", bottles_of_beer)

  print "#{prefix} of beer on the wall, "
  puts  "#{prefix} bottles of beer!"

  bottles_of_beer -= 1
  prefix = pluralize("bottle", bottles_of_beer)

  print "You take one down, and pass it around, "
  puts "#{prefix} of beer on the wall!"
  puts
end

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store, and buy some more, 99 bottles of beer on the wall!"
puts

