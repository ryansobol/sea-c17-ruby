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

def old_school_roman_numeral(input)
  puts "The Arabic input is: #{input}"

  i = 0
  arabic = [1000, 500, 100, 50, 10, 5, 1]
  roman = ["M", "D", "C", "L", "X", "V", "I"]
  rom_num = []
  remainder = input

  while i <= arabic.length - 1
    n = remainder / arabic[i]
    rom_num.push roman[i] * n if n > 0
    remainder = remainder % arabic[i]
    #puts "There are #{n} #{roman[i]}'s"
    i += 1
  end
  roman_final = rom_num
  puts "The roman number is below:"
  puts roman_final.join("")
end

input = ARGV[0].to_i

if input <= 0 || input > 3000
  puts "Usage: 4_old_school_roman_numerals [1-3000]"
  exit
end

old_school_roman_numeral(input)
