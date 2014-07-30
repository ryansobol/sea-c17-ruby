#!/usr/bin/env ruby
#
# 4 points
#
# Write a program that converts a roman numeral to an arabic number. Come on,
# you knew this was coming. It's time for redemption!
#
# For example:
#
#   $ ruby 5_arabic_numbers.rb mcmxcix
#   1999
#
# The program should handle both lowercase and uppercase roman numerals:
#
#   $ ruby 5_arabic_numbers.rb CDXLIV
#   444
#
# And reject strings that aren’t valid Roman numerals:
#
#   $ ruby 5_arabic_numbers.rb bigboi
#   Invalid roman numeral 'bigboi'
#
# HINT: Draw first, program second. Ask yourself the following questions:
#
#   What are the base cases?
#   How would I solve it by hand?
#   What patterns are emerging from my solution?
#   What are the operations within the pattern?
#   How do I know when to move on?
#   How do I know when to stop?
#
#
# A few methods that may help:
#
#   Hash#each do |key, value| ... end
#
#     Iterates over a Hash, assigning key and value for each key-value pair.
#
#     { "a" => 1, "b" => 2 }.each do |key, value|
#       puts "#{key} #{value}"
#     end
#
#     Output:
#
#     a 1
#     b 2
#
#   String#cut(match) → String
#
#     Returns a String of all occurances of match removed from the front.
#
#     "aabbcc".cut("a")   #=> "aa"
#     "aabbcc".cut("aa")  #=> "aa"
#     "aabbcc".cut("b")   #=> ""
#
#   String#[Range] → String
#
#     Returns a substring containing characters starting and finishing at the
#     Range's min and max.
#
#     "hello"[0..0]   #=> "h"
#     "hello"[0..1]   #=> "he"
#     "hello"[0..2]   #=> "hel"
#     "hello"[1..1]   #=> "e"
#     "hello"[1..2]   #=> "el"
#     "hello"[1..3]   #=> "ell"
#
#   String#empty? → true or false
#
#     Returns true if it's the empty String, otherwise false.
#
#     "".empty?   #=> true
#     "a".empty?  #=> false

# STRATEGY: first look for two character matches.
# if there is a match then i will add the corresponding number to a tally & slice out the matching letters
# then, i will iterate through for the single character matches and do the same
# the resulting tally should = the digit



def arabic_number(num)
nums1 = {
  "M"  => 1000,
  "D"  => 500,
  "C"  => 100,
  "L"  => 50,
  "X"  => 10,
  "V"  => 5,
  "I"  => 1,
}

nums2 = {
  "CM" => 900,
  "CD" => 400,
  "XC" => 90,
  "XL" => 40,
  "IX" => 9,
  "IV" => 4,
}

  i = 1
  n = 0
  tally = 0

  while i < num.length
    char = num[n..i]
      if nums2[char] != nil
        tally = tally + nums2[char]
        puts num[n..i]
        result = num.split(char) # make this match the character
        result = result.join
        puts "the tally is #{tally}"
        puts "the remaining string is #{result}"
        i += 2
        n += 2
      else
        i += 1
        n += 1
      end
  end
end



class String
  def cut(str)
    slice(/^(#{str})*/)
  end
end

input = ARGV.first

if input.nil?
  puts "Usage: 5_arabic_numbers.rb ROMAN_NUMERAL"
  exit
end

#puts arabic_number(input)

num = input.to_s

puts arabic_number(num)


