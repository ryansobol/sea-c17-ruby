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

title = "Table of Contents"
puts title.center(50)

puts

arr = [["Chapter 1: Getting Started", "page  1      "],
       ["Chapter 2: Numbers",         "page  9"      ],
       ["Chapter 3: Letters",         "page 13"      ]]

arr.each do |obj|
  chp_name = obj[0]
  page = obj[1]

  puts chp_name.ljust(20) + page.rjust(30)
end
