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

line_width = 50
table_of_contents = ["Table of Contents", "Chapter 1:  Getting Started",
  "Chapter 2:  Numbers", "Chapter 3:  Letters", "page  1", "page  9",
  "page 13"]
puts (table_of_contents[0].center(line_width))
puts ''
puts (table_of_contents[1].ljust(30) + table_of_contents[4].rjust(20))
puts (table_of_contents[2].ljust(30) + table_of_contents[5].rjust(20))
puts (table_of_contents[3].ljust(30) + table_of_contents[6].rjust(20))
