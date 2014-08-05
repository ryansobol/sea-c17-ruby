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


# def each_without_yolo(&block)
#    block.call

# end

# ["OMG", "YOLO", "ROTFL", "yolo", "FTW"].each_without_yolo { |e| puts e }

class Array
  def each_without_yolo(&block)
    self.each do |word|
      if word.upcase == "YOLO"
        word = "Life is too short"
        puts word
      end
    end
  end
end

["OMG", "YOLO", "ROTFL", "yolo", "FTW"].each_without_yolo { |e| puts e }


# class Array
#   def each_without_yolo(&block)
#     self.each do |word|
#       if word.upcase == "YOLO"
#         puts "Life is too short"
#       else
#         puts word
#       end
#     end
#   end
# end

# ["OMG", "YOLO", "ROTFL", "yolo", "FTW"].each_without_yolo { |e| puts e }
