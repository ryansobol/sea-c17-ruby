# Section 6.2 on page 32
# 4 points
# Here’s something for you to do in order to play around more with center,
# ljust, and rjust: write a program that will display a table of contents so
# that it looks like this:
#
#                 Table of Contents
#
# Chapter 1:  Getting Started                page  1
# Chapter 2:  Numbers                        page  9
# Chapter 3:  Letters                        page 13

puts('Chapter 1:' +  '  Getting Started' + 'page  1'.rjust(43))
puts('Chapter 2:'.ljust(12) + 'Numbers' + 'page  9'.rjust(51))
puts('Chapter 3:' + '  Letters' + 'page 13'.rjust(51))