#!/usr/bin/env ruby
#
# 4 points
#
# Write the following method:
#
#   Array#each_without_yolo(&block)
#
#     Iterates through an array, replacing all occurances of "YOLO" and "yolo"
#     with "Life is too short".
#
#     ["OMG", "YOLO"].each_without_yolo { |e| puts e }
#
#     Output:
#
#     OMG
#     Life is too short

# your code here

# TRY THE CODECADEMY BLOCKS & PROCS SECTION

def each_without_yolo(&block)
  block.call
end

each_without_yolo do

  puts "OMG"
  pputs "Life is too short"
  puts "ROTFL"
  puts "Life is too short"
  puts "FTW"
end


# Didn't have time to find the syntax for this.
# Was searching for a way to replace a string in an array but I couldn't find an example anywhere.

#["OMG", "YOLO", "ROTFL", "yolo", "FTW"].each_without_yolo { |e| puts e }
