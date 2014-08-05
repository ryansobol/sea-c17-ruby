#!/usr/bin/env ruby
#
# 4 points
#
# Modify the previous method with the following change:
#
#   grandfather_clock(str, &block)
#
#     Accepts a String and a block. Calls the block, passing in the string,
#     once for each hour that's passed today.
#
#     grandfather_clock("GONGGGGGGG!") do |sound|
#       puts sound
#     end
#
#     Output:
#
#     The hour is 2
#     GONGGGGGGG!
#     GONGGGGGGG!

def grandfather_clock(str, &block)
  hours = Time.new.hour
  hours -= 12 if hours > 12
  hours = 12 if hours == 0

  puts "The hour is #{hours}"

  hours.times { block.call(str) }
end

grandfather_clock("GONGGGGGGG!") do |sound|
  puts sound
end
