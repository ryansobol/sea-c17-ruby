# Section 6.2 on page 32
# 4 points
#
# Here’s something for you to do in order to play around more with center,
# ljust, and rjust: write a program that will display a table of contents so
# that it looks like this:
#
#                 Table of Contents
#
# Chapter 1:  Getting Started                page  1
# Chapter 2:  Numbers                        page  9
# Chapter 3:  Letters                        page 13


line_width = 50

puts('Table of Contents'.center(line_width))
puts ''
puts ('Chapter 1:  Getting Started'.ljust(20) + 'page 1'.rjust(20))
puts ('Chapter 2:  Numbers'.ljust(20) + 'page 9'.rjust(27))
puts ('Chapter 3:  Letters'.ljust(20) + 'page 13'.rjust(28))


