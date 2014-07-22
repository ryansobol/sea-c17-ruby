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

def modern_roman_numeral(num)

  roman_numeral = "" #values will be appended
  numerals = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX",
              "V", "IV", "I"]
  arabic =   [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]

  i = 0 #iterate through the arrays

  while i <= 12 #while within the array length
    while num >= arabic[i]
      num -= arabic[i] # remove the val
      roman_numeral += numerals[i] # assign the rom
    end
    i += 1 # increment
  end
  roman_numeral # return the rom to terminal
end

input = ARGV[0].to_i

if input <= 0 || input > 3000
  puts "Usage: 5_modern_roman_numerals [1-3000]"
  exit
end

puts modern_roman_numeral(input)
