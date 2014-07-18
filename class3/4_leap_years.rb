# Section 7.5 on page 49
# 4 points
#
# Write a program that asks for a starting year and an ending year and then puts
# all the leap years between them (and including them, if they are also leap
# years). Leap years are years divisible by 4 (like 1984 and 2004). However,
# years divisible by 100 are not leap years (such as 1800 and 1900) unless they
# are also divisible by 400 (such as 1600 and 2000, which were in fact leap
# years). What a mess!


puts "Define a starting year."
year_1 = gets.chomp.to_i
puts "Define an ending year."
year_2 = gets.chomp.to_i
puts "The leap years in that range are:"
for y in year_1 .. year_2
  if y % 4 == 0 && y % 100 != 0 || y % 400 == 0
    puts y
  end
end
