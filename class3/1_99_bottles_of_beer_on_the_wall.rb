






































# Section 7.5 on page 49
# 4 points
#
# Write a program that prints out the lyrics to that beloved classic,
# "99 Bottles of Beer on the Wall."

bottles = 99
bottle_plural = "bottles"
while bottles >= 1

  if bottles == 1
    puts "#{bottles} more bottle of beer on the wall, only "\
         "#{bottles} bottle of beer!"
    puts "Take it down, pass it around, no more bottles of beer on the wall!"
  elsif bottles > 1
    if bottles == 2
      bottle_plural = "bottle"
    end
  puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer!"
  puts "Take one down, pass it around, #{bottles-1} #{bottle_plural} "\
       "of beer on the wall!"
  end
  bottles -= 1
end
