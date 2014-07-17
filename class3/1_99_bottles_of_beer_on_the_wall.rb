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

bottles_of_beer = 99
while bottles_of_beer > 0
  puts "#{bottles_of_beer} bottles of beer on the wall, #{bottles_of_beer} bottles of beer!"
  print "You take one down, and pass it around, "
  # Is there a cleaner way to code line 27 in two lines to keep under 80 characters?
  puts bottles_of_beer - 1 == 1 ? "#{bottles_of_beer - 1} bottle of beer on the wall!" : "#{bottles_of_beer -1} bottles of beer on the wall!"
  puts
  bottles_of_beer -= 1
  if bottles_of_beer == 1
    puts "#{bottles_of_beer} bottle of beer on the wall, #{bottles_of_beer} bottle of beer!"
    puts "You take it down, and pass it around, no more bottles of beer on the wall!"
    puts
    puts "No more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store, and buy some more, 99 bottles of beer on the wall!"
    puts
    break
  end
end

