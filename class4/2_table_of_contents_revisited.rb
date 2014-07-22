#!/usr/bin/env ruby
#
# Section 8.3 on page 56
# 4 points
#
# Rewrite your table of contents program on page 32. Start the program with an
# array holding all of the information for your table of contents (chapter
# names, page numbers, and so on). Then print out the information from the array
# in a beautifully formatted table of contents like this:
#
#                 Table of Contents
#
# Chapter 1:  Getting Started                page  1
# Chapter 2:  Numbers                        page  9
# Chapter 3:  Letters                        page 13

table = [["Getting Started", "1"], ["Numbers", "9"],["Letters", "13"]]

puts "Table of Contents".center(50)
puts
for i in 0..table.length-1
  puts "Chapter #{i+1}: #{table[i][0]}".ljust(30) +
  "page #{table[i][1]}".rjust(20)
end
