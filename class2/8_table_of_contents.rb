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

puts ' '
line_width = 51
puts 'Table of Contents'.center(line_width)
puts ' '
puts 'Chapter 1:'.ljust(line_width/4) + 'Getting Started'.ljust(line_width/1.5) + 'page '.ljust(line_width/25) +  "1".rjust(line_width/25)
puts 'Chapter 2:'.ljust(line_width/4) + 'Numbers'.ljust(line_width/1.5) + 'page '.ljust(line_width/25) + '9'.rjust(line_width/25)
puts 'Chapter 3:'.ljust(line_width/4) + 'Letters'.ljust(line_width/1.5) + 'page '.ljust(line_width/25) + '13'.rjust(line_width/25)



