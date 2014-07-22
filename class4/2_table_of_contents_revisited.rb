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

t_width = 55
book = ["Table of Contents", 1, "Getting Started", "page  1", 2, "Numbers", "page  9", 3, "Letters", "page 13"]
index = 1

puts
puts book[0].center(t_width)
puts
for chapter in 1..(book.length/3)
puts "Chapter #{book[index]}:  #{book[index +1]}".ljust(t_width/2) + "#{book[index +2]}".rjust(t_width/2)
index += 3
end
puts

=begin
  Here are my issues, I hope you're comfortable.
  First style.  I don't know how to avoid breaking the 80 character rule when
  it comes to long arrays or output that needs the alignment syntax included.

  Next up, I felt like this exercise might have benefitted from the .pop method
  but did not think it a good practice to insert data into an array backwards
  just to take advantage of it as I didn't think that would translate into
  real world practices. So I hope my solution is still in the spirit of the
  exercise (which is say please give me all 4 points?)

  Finally, I bothered me that I had to include the word "page" in my array.
  It felt excessively repetitive (that's redundant isn't it?).
  but my solution did not build in logic that would recognize if the page
  number had 1, 2 or more characters in it and then adjust the page alignment
  accordingly.  I got away with in regards to the Chapters but would have ran
  across the same issue should the chapters have gone to 10.
=end
