# Section 7.5 on page 49
# 4 points
#
# Write a program that asks for a starting year and an ending year and then puts
# all the leap years between them (and including them, if they are also leap
# years). Leap years are years divisible by 4 (like 1984 and 2004). However,
# years divisible by 100 are not leap years (such as 1800 and 1900) unless they
# are also divisible by 400 (such as 1600 and 2000, which were in fact leap
# years). What a mess!


puts "\nPlease input a starting year: "
s = gets.chomp
puts "\nThanks, please input and ending year: "
e = gets.chomp

puts "\nGreat, here are the leap years between that range: \n\n"

for i in s..e

  if i.to_i % 100 == 0

    if i.to_i % 400 == 0
    puts i
    end

    elsif i.to_i % 4 == 0
      puts i
    end

  end

puts


