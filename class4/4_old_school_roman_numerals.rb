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
  values = [1000, 500, 100, 50, 10, 5, 1]

  m_remainder = num % values[0]
  d_remainder = num % values[1]
  c_remainder = num % values[2]
  l_remainder = num % values[3]
  x_remainder = num % values[4]
  v_remainder = num % values[5]

  m_number = num / values[0]
  d_number = m_remainder / values[1]
  c_number = d_remainder / values[2]
  l_number = c_remainder / values[3]
  x_number = l_remainder / values[4]
  v_number = x_remainder / values[5]
  i_number = v_remainder / values[6]

  m = "M" * m_number
  d = "D" * d_number
  c = "C" * c_number
  l = "L" * l_number
  x = "X" * x_number
  v = "V" * v_number
  i = "I" * i_number

  puts m + d + c + l + x + v + i
end

input = ARGV[0].to_i

if input <= 0 || input > 3000
  puts "Usage: 4_old_school_roman_numerals [1-3000]"
  exit
end

puts old_school_roman_numeral(input)

