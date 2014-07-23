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
  numerals = "MDCLXVI"
  divisors = [1000, 500, 100, 50, 10, 5, 1]
  answer = []
  index = 0

  divisors.each do |divisor|
    if index == 1 && num / 100 == 9
      num %= 100
      answer.push("CM")
    elsif index == 2 && num / 100 == 4
      num %= 100
      answer.push("CD")
    elsif index == 3 && num / 10 == 9
      num %= 10
      answer.push("XC")
    elsif index == 4 && num / 10 == 4
      num %= 10
      answer.push("XL")
    elsif index == 5 && num / 1 == 9
      answer.push("IX")
      break
    elsif index == 6 && num / 1 == 4
      answer.push("IV")
      break
    else
      answer.push(numerals[index] * (num / divisor))
      num %= divisor
    end

    index += 1
  end

  answer.join('')
end

input = ARGV[0].to_i

if input <= 0 || input > 3000
  puts "Usage: 5_modern_roman_numerals [1-3000]"
  exit
end

puts modern_roman_numeral(input)
