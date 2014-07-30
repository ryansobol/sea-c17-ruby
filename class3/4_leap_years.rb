# Section 7.5 on page 49
# 4 points
#
# Write a program that asks for a starting year and an ending year and then puts
# all the leap years between them (and including them, if they are also leap
# years). Leap years are years divisible by 4 (like 1984 and 2004). However,
# years divisible by 100 are not leap years (such as 1800 and 1900) unless they
# are also divisible by 400 (such as 1600 and 2000, which were in fact leap
# years). What a mess!

puts "What is the starting year?"
x = gets.chomp.to_i

puts "What is the ending year?"
y = gets.chomp.to_i

i = x
leap_years = []

while i <= y
  if i % 400 == 0 || i % 4 == 0 && i % 100 != 0
    leap_years.push(i)
  end

  i += 1
end

puts "These are the leaps years: "
puts leap_years
