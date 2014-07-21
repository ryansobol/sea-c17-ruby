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

contents = ["Table of Contents", "Chapter 1:  ", "Getting Started", "Page  1",
  "Chapter 2:  ", "Numbers", "Page  9", "Chapter 3:  ", "Letters", "Page 13"]

puts contents[0].center(50)
puts


for i in 1..contents.length
  if i == 1
  puts contents[i].ljust(0) + contents[i+1].ljust(12) + contents[i+2].rjust(17)
  elsif i == 4 || i == 7
  puts contents[i].ljust(0) + contents[i+1].ljust(12) + contents[i+2].rjust(20)
  end
end

puts
