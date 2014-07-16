# Section 7.5 on page 49
# 4 points
#
# Write a program that asks for a starting year and an ending year and then puts
# all the leap years between them (and including them, if they are also leap
# years). Leap years are years divisible by 4 (like 1984 and 2004). However,
# years divisible by 100 are not leap years (such as 1800 and 1900) unless they
# are also divisible by 400 (such as 1600 and 2000, which were in fact leap
# years). What a mess!

puts "Enter a starting year: "
start = gets.chomp
puts "Enter an ending year: "
ending = gets.chomp

puts "Leap years from #{start} to #{ending} are:"
for year in (start..ending)
  if year.to_i % 4 == 0
    print "#{year} "
  end
end
puts
