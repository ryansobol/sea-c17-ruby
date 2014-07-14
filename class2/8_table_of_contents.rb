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


puts ""
puts "Table of Contents".center(80)
puts ""
puts ("Chapter 1:  ".ljust(0) + "Getting Started".ljust(60) + "Page 1".ljust(80))
puts ("Chapter 2:  ".ljust(0) + "Numbers".ljust(60) + "Page 9".ljust(80))
puts ("Chapter 3:  ".ljust(0) + "Letters".ljust(60) + "Page 13".ljust(80))
puts ""
