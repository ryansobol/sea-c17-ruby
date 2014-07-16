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


lineWidth = 80

TOC = "Table of Contents"
a = "Chapter 1:  Getting Started"
b = "Chapter 2:  Numbers"
c = "Chapter 3:  Letters"

x = "page 1"
y = "page 9"
z = "page 13"


puts TOC.center(50)

puts a.ljust(30) + x.rjust(20)
puts b.ljust(30) + y.rjust(20)
puts c.ljust(30) + z.rjust(20)
