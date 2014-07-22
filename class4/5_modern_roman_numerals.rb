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

  roman_array = []

  m_count  = 0 # 1000
  cm_count = 0 # 900
  d_count  = 0 # 500
  cd_count = 0 # 400
  c_count  = 0 # 100
  xc_count = 0 # 90
  l_count  = 0 # 50
  xl_count = 0 # 40
  x_count  = 0 # 10
  ix_count = 0 # 9
  v_count  = 0 # 5
  iv_count = 0 # 4
  i_count  = 0 # 1

  # checks for M
  if num >= 1000
    m_count = num / 1000
    num = num % 1000
  end

  # checks for CM
  if num >= 900
    cm_count = num / 900
    num = num % 900
  end

  # checks for D
  if num >= 500
    d_count = num / 500
    num = num % 500
  end

  # checks for CD
  if num >= 400
    cd_count = num / 400
    num = num % 400
  end

  # checks for C
  if num >= 100
    c_count = num / 100
    num = num % 100
  end

  # checks for XC
  if num >= 90
    xc_count = num / 90
    num = num % 90
  end

  # checks for L
  if num >= 50
    l_count = num / 50
    num = num % 50
  end

  # checks for XL
  if num >= 40
    xl_count = num / 40
    num = num % 40
  end

  # checks for X
  if num >= 10
    x_count = num / 10
    num = num % 10
  end

  # checks for IX
  if num >= 9
    ix_count = num / 9
    num = num % 9
  end

  # checks for V
  if num >= 5
    v_count = num / 5
    num = num % 5
  end

  # checks for IV
  if num >= 4
    iv_count = num / 4
    num = num % 4
  end

  # checks for I
  if num < 4
    i_count = num / 1
    num = num % 10
  end

#puts m_count
#puts num

  # Pushes objects to array
  roman_array.push "M"  * m_count
  roman_array.push "CM" * cm_count
  roman_array.push "D"  * d_count
  roman_array.push "CD" * cd_count
  roman_array.push "C"  * c_count
  roman_array.push "XC" * xc_count
  roman_array.push "L"  * l_count
  roman_array.push "XL" * xl_count
  roman_array.push "X"  * x_count
  roman_array.push "IX" * ix_count
  roman_array.push "V"  * v_count
  roman_array.push "IV" * iv_count
  roman_array.push "I"  * i_count

  puts roman_array.join
end

input = ARGV[0].to_i

if input <= 0 || input > 3000
  puts "Usage: 5_modern_roman_numerals [1-3000]"
  exit
end

puts modern_roman_numeral(input)
