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

content = ["Chapter 1:", "Getting Started", "page 1", "Chapter 2:", "Numbers", "page 9", "Chapter 3:", "Letters", "page 13"]

puts ""
puts "Table of Contents".center(50)

i = 0

while i < 9
  a = content [i]
  b = content [i + 1]
  c = content [i + 2]
  puts a.ljust(12) + b + c.rjust(50 - a.length - b.length)
  i = i + 3
end

#puts content [i].ljust(12) + content [i + 1] + content [i + 2].rjust(38)
#i = i + 3
#puts content [i].ljust(12) + content [i + 1] + content [i + 2].rjust(38)

