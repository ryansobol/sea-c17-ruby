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

class Array
  def each_without_yolo(&block)
    i = 0
    while i < self.size
      self[i].downcase == "yolo" ? yield("Life is too short") : yield(self[i])
      i += 1
    end
  end
end

["OMG", "YOLO", "ROTFL", "yolo", "FTW"].each_without_yolo { |e| puts e }
