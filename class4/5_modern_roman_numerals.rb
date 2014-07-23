#!/usr/bin/env ruby
#
# Section 9.5 on page 68
# 4 points
#
# Eventually, someone thought it would be terribly clever if putting a smaller
# number before a larger one meant you had to subtract the smaller one. As a
# result of this development, you must now suffer.
#
# Rewrite your previous program so that, when passed any integer bewteen 1 and
# 3000, it returns a string containing the proper modern Roman numeral. In other
# words:
#
#   modern_roman_numeral(9)
#
# should return
#
#   "IX"
#
# Hint: Run the program from the shell like this:
#
#   $ ruby 5_modern_roman_numerals.rb 9
#   IX

def modern_roman_numeral(input)
  puts "The Arabic input is: #{input}"

  i = 0
  arabic = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  roman = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
  rom_num = []
  remainder = input

  while i <= arabic.length - 1
    n = remainder / arabic[i]
    rom_num.push roman[i] * n if n > 0 && n < 4
    remainder = remainder % arabic[i]
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

modern_roman_numeral(input)
