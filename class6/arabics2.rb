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

# NEW STRATETGY: first look for two character matches.
# Split everything and push into an array
# then, split the remaining array
# then lookup the values of that array

input = ARGV.first
num = input.to_s

lookup = {
  "M"  => 1000,
  "D"  => 500,
  "C"  => 100,
  "L"  => 50,
  "X"  => 10,
  "V"  => 5,
  "I"  => 1,
  "CM" => 900,
  "CD" => 400,
  "XC" => 90,
  "XL" => 40,
  "IX" => 9,
  "IV" => 4,
}

short_romans = ["M", "D", "C", "L", "X", "V", "I"]
long_roman = ["CM", "CD", "XC", "XL", "IX","IV"]

add_ems = []


i = 1
n = 0
while i <= 6
    add_ems.push   # push to array if match


    i += 1
  end

