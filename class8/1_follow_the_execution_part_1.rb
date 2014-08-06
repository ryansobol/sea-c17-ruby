#!/usr/bin/env ruby
#
# 4 points
#
# Write a program that follows the execution of a block and a method. It should
# display a short message informing the user when execution has reached the
# construct.
#
# For example:
#
#   $ ruby 1_follow_the_execution_part_1.rb
#   Executing the method
#   Executing the block
#
# Hint: Don't over think this one. The simpler the better.

def follow_the_execution(&block)
  puts "Executing the method"
  block.call
end

follow_the_execution do
  puts "Executing the block"
end
