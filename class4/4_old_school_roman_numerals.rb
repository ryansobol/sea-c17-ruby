#!/usr/bin/env ruby
#
# Section 9.5 on page 68
# 4 points
#
# In the early days of Roman numerals, the Romans didn't bother with any of this
# new-fangled subtraction "IX" nonsense. No sir, it was straight addition,
# biggest to littlest - so 9 was written "VIIII" and so on.
#
# Write a method that, when passed any integer between 1 and 3000, it returns a
# string containing the proper old-school Roman numeral. In other words:
#
#   old_roman_numeral(9)
#
# should return
#
#   "VIIII"
#
# Make sure to test your method on a bunch of different numbers like 1999.
#
# Hint 1: Use the integer division and modulus methods on page 32.
#
# Hint 2: Here's a mapping of Roman to Arabic numerals:
#
#   I = 1
#   V = 5
#   X = 10
#   L = 50
#   C = 100
#   D = 500
#   M = 1000
#
# Hint 3: Run the program from the shell like this:
#
#   $ ruby 4_old_school_roman_numerals.rb 9
#   VIIII


def old_school_roman_numeral(num)
  roman_numeral = ""

  if num >= 1000
    roman_numeral += ("M" * (num / 1000))
    num %= 1000
  end

  if num >= 500
    roman_numeral += ("D" * (num / 500))
    num %= 500
  end

  if num >= 100
    roman_numeral += ("C" * (num / 100))
    num %= 100
  end

  if num >= 50
    roman_numeral += ("L" * (num / 50))
    num %= 50
  end

  if num >= 10
    roman_numeral += ("X" * (num / 10))
    num %= 10
  end

  if num >= 5
    roman_numeral += ("V" * (num / 5))
    num %= 5
  end

  if num >= 1
    roman_numeral += ("I" * (num / 1))
    num %= 1
  end

  roman_numeral

end

input = ARGV[0].to_i

if input <= 0 || input > 3000
  puts "Usage: 4_old_school_roman_numerals [1-3000]"
  exit
end

puts old_school_roman_numeral(input)
