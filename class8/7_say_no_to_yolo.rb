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
class Array
  def each_without_yolo(&block)
    e = "YOLO" || "yolo"
    if self == e self.each do
      block.call("Life is too short")
    end
  end
end
["OMG", "YOLO", "ROTFL", "yolo", "FTW"].each_without_yolo { |e| puts e }
