#!/usr/bin/env ruby
#
# Section 8.3 on page 56
# 4 points
#
# Write the program we talked about at the beginning of this chapter, one that
# asks us to type as many words as we want (one word per line, continuing until
# we just press `Enter` on an empty line) and then repeats the words back to us
# in alphabetical order. Here's an example of how the program should behave:
#
# Give me some words, and I will sort them:
# banana
# apple
# cherry
#
# Sweet! Here they are, sorted:
# apple
# banana
# cherry
#
# Make sure to test your program thoroughly. For example:
#
# - Does hitting `Enter` on an empty line always exit your program?
# - Even on the first line?
# - And the second?
#
# Hint: There’s a lovely array method that will give you a sorted version of
# an array called `sort`. Use it!

puts
puts
puts "Dude, here's the thing, I'm wicked smart.  Don't listen to that Chris"
puts "Pine fella. The dude is jealous of my massively awesome speed at doing"
puts "stuff.  He talks to himself, did you know that?"
puts "Anyway, I'll prove it. Check out this mad skill, I'll take any "
puts "amount of words...heck numbers too, that you care to throw at me. I'll"
puts "sort that shit faster than you can blink an eye.  For reelz!"
puts "Just give me each word (I don't even care if it's made up) or number"
puts "one at time.  When you're done, just hit enter without typing anything"
puts "else and I'll do my voo-doo."
puts

words = []
puts "Give me some words, and I will sort them:"

loop do
  input = gets.chomp
  break if input == ""
  words.push(input)
end

if words.length > 0
  puts "Sweet! Here they are, sorted:"
  puts words.sort()
end
