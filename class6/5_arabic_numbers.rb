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
# Roman numearls to Arabic numbers:
#
#   M  => 1000
#   CM => 900
#   D  => 500
#   CD => 400
#   C  => 100
#   XC => 90
#   L  => 50
#   XL => 40
#   X  => 10
#   IX => 9
#   V  => 5
#   IV => 4
#   I  => 1
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

def arabic_number(num)
  digit_vals = {'i' =>    1,
                'iv'=>    4,
                'v' =>    5,
                'ix'=>    9,
                'x' =>   10,
                'xl'=>   40,
                'l' =>   50,
                'xc'=>   90,
                'c' =>  100,
                'cd'=>  400,
                'd' =>  500,
                'cm'=>  900,
                'm' => 1000}
  total = 0
  prev  = 0
  index = num.length - 1
  while index >= 0
    c = num[index].downcase
    index = index - 1
    val = digit_vals[c]
    if !val
      puts "This is not a valid roman numeral!"
      return
    end
    if val < prev
      val = val * -1
    else
      prev = val
    end
    total = total + val
  end
  total
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

puts arabic_number(input)
