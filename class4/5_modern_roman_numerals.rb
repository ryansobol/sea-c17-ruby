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



def modern_roman_numeral(input_num)
  options_arr = [[1000, "M"], [900, "CM"], [500, "D"], [400, "CD"], [100, "C"],
              [90, "XC"], [50, "L"], [40, "XL"], [10, "X"], [9, "IX"], [5, "V"],
              [4, "IV"], [1, "I"]]
  final_arr = []

  options_arr.each do |obj_in_array|

    value, letters = obj_in_array

    if input_num > 0 && input_num < 3001
      while input_num >= value
        final_arr.push letters

        input_num -= value
      end
    end
  end

  final_arr.join
end


input = ARGV[0].to_i

if input <= 0 || input > 3000
  puts "Usage: 5_modern_roman_numerals [1-3000]"
  exit
end

puts modern_roman_numeral(input)
