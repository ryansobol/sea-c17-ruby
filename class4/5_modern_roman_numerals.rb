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
  roman = ["I","V","X","L","C","D","M"]
  digit = [1, 5, 10, 50, 100, 500, 1000]
  position = []
  roman_numeral = ""

  def math(x,y,z)
    if (y == 1000 && z != 500)
       x / y
    else
       (x % y) / z
    end
  end

  counter = 0
  until counter == 7
    if counter == 6
      position.push math(num, digit[counter], 1)
    elsif counter == 0
      position.push math(num, digit[counter +1], 1)
    else
      position.push math(num, digit[counter + 1], digit[counter])
    end
    counter += 1
  end

  num = 6
  while num >= 0
  a = position[num]
  b = roman[num]
    until a == -1
      if (position[num] == 1 && position[num - 1] == 4)
        roman_numeral = roman_numeral + roman[num - 1] + roman[num + 1]
        break
      elsif (position[num] == 0 && position[num - 1] == 4)
        roman_numeral = roman_numeral + roman[num - 1] + roman[num]
        break
      elsif (position[num] == 0 || position[num] == 4)
        break
      else
        break if a == 0
          roman_numeral += b
          a -= 1
      end
    end
    num -= 1
  end
  puts roman_numeral
  puts
end

input = ARGV[0].to_i

if input <= 0 || input > 3000
  puts "Usage: 5_modern_roman_numerals [1-3000]"
  exit
end

puts modern_roman_numeral(input)
