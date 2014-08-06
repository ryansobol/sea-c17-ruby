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
  now_hour = Time.new.hour

  now_hour = 12 if now_hour == 0
  now_hour -= 12 if now_hour > 12

  puts "The hour is #{now_hour}"

  now_hour.times { block.call(str) }
end

grandfather_clock("GONGGGGGGG!") do |sound|
  puts sound
end
