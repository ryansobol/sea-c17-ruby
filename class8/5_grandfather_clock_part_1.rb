#!/usr/bin/env ruby
#
# 4 points
#
# Write the following method:
#
#   grandfather_clock(&block)
#
#     Accepts a block and calls it once for each hour that's passed today.
#
#     grandfather_clock do
#       puts "DONG!"
#     end
#
#     Output:
#
#     The hour is 2
#     DONG!
#     DONG!
#
# Hint: Use Time.new.hour to get the current hour. However, this returns an
# Integer between 0 and 23. You'll have to alter the return value to ensure
# the program uses a number that appears on a clock-face. (i.e. 1 to 12)

def grandfather_clock(&block)
  now = Time.new.hour
  now -= 12 if now > 12
  puts "The hour is #{now}"

  now.times do block.call
  end
end

grandfather_clock do
  puts "DONG!"
end

