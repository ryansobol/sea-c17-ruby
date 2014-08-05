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
  current_hour = Time.new.hour
  current_hour -= 12 if current_hour > 12
  current_hour  = 12 if current_hour == 0

  puts "The hour is #{current_hour}"

  current_hour.times { block.call(str) }
end

grandfather_clock("GONGGGGGGG!") do |sound|
  puts sound
end
