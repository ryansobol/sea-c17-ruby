# Section 7.5 on page 49
# 4 points
#
# Write a program that asks for a starting year and an ending year and then puts
# all the leap years between them (and including them, if they are also leap
# years). Leap years are years divisible by 4 (like 1984 and 2004). However,
# years divisible by 100 are not leap years (such as 1800 and 1900) unless they
# are also divisible by 400 (such as 1600 and 2000, which were in fact leap
# years). What a mess!

puts "Hi! Enter a starting year and ending year and I'll tell you which leap years are in between!"
puts "Enter your starting year:"
start_year = gets.chomp.to_i
puts "Enter your ending year:"
end_year = gets.chomp.to_i
puts "Calculating.....Done. Here are the leap years within your range:"

while start_year <= end_year
	if start_year % 4 == 0 && (start_year % 100 != 0 || start_year % 400 == 0)
			puts start_year
	end
	start_year += 1
end
