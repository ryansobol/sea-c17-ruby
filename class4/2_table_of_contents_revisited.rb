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

chapters = [
  ['1','Getting Started','1'],
  ['2','Numbers','9'],
  ['3','Letters','13']
 ]

 puts 'Table of Contents'.center(50)

chapters.each do |chapter|
  puts 'Chapter ' + chapter[0] + ':  ' + chapter[1].ljust(42) + ('page  ' + chapter[2]).ljust(50)
end
