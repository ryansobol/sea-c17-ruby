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
  cur = Time.new.hour
  cur -= 12 if cur > 12
  cur = 12 if cur == 0

  puts "The hour is #{cur}"

  cur.times { block.call }
end

grandfather_clock("GONGGGGGGG!") do |sound|
  puts sound
end
