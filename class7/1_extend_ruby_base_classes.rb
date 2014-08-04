#!/usr/bin/env ruby
#
# 4 points
#
# This program is br0ken! Fix it so the output looks like this:
#
#   $ ruby 1_extend_ruby_base_classes.rb
#   true
#   true
#   true
#   true
#   true
#   true
#   true
#   true
#
# The following methods must be fixed:
#
#   Integer#hours_in_seconds → Integer
#
#     Returns the number of hours converted to seconds.
#
#     10.hours_in_seconds  #=> 36000
#
#   String#indent(amount = 2) → String
#
#     Returns amount spaces plus the String. The default amount should be 2.
#
#     "foo".indent     #=> "  foo"
#     "foo".indent(3)  #=> "   foo"
#
#   Integer#to_roman → String
#
#     Returns the roman numeral equavilent of the arabic number.
#
#     1999.to_roman  #=> "MCMXCIX"
#
#   Array#second → Object
#   Array#third → Object
#   Array#fourth → Object
#
#     Returns either the second, third, or fourth element of the Array.
#
#     [10, 20, 30, 40].second  #=> 20
#     [10, 20, 30, 40].third   #=> 30
#     [10, 20, 30, 40].fourth  #=> 40
#
# HINT: Remember to use `self` to access the receiver object of the method
#
#     class Integer
#       def plus_forty_two
#         self + 42
#       end
#     end
#
#     1.plus_forty_two  #=> 43

class Integer
  def hours_in_seconds
    self * 60 * 60
  end
end

puts 10.hours_in_seconds == 36000

class String
  def indent(amount = 2)
    " " * amount + self
  end
end

puts "foo".indent == "  foo"
puts "foo".indent(3) == "   foo"

class Integer
  def to_roman
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
      position.push math(self, digit[counter], 1)
    elsif counter == 0
      position.push math(self, digit[counter +1], 1)
    else
      position.push math(self, digit[counter + 1], digit[counter])
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
  roman_numeral
  end
end

puts 1999.to_roman == "MCMXCIX"
puts 444.to_roman == "CDXLIV"

class Array
  def second
    self[1]
  end

  def third
    self[2]
  end

  def fourth
    self[3]
  end
end

puts [10, 20, 30, 40].second == 20
puts [10, 20, 30, 40].third == 30
puts [10, 20, 30, 40].fourth == 40
