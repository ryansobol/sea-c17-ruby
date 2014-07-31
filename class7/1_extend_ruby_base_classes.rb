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
    # your code here
  end
end

puts 10.hours_in_seconds == 36000

class String
  def indent(amount = 2)
    # your code here
  end
end

puts "foo".indent == "  foo"
puts "foo".indent(3) == "   foo"

class Integer
  def to_roman
    # your code here
  end
end

puts 1999.to_roman == "MCMXCIX"
puts 444.to_roman == "CDXLIV"

class Array
  def second
    # your code here
  end

  def third
    # your code here
  end

  def fourth
    # your code here
  end
end

puts [10, 20, 30, 40].second == 20
puts [10, 20, 30, 40].third == 30
puts [10, 20, 30, 40].fourth == 40
