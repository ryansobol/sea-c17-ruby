# Section 7.5 on page 49
# 4 points
#
# Write a program that asks for a starting year and an ending year and then puts
# all the leap years between them (and including them, if they are also leap
# years). Leap years are years divisible by 4 (like 1984 and 2004). However,
# years divisible by 100 are not leap years (such as 1800 and 1900) unless they
# are also divisible by 400 (such as 1600 and 2000, which were in fact leap
# years). What a mess!

table_length = 80
puts
puts "WELCOME TO THE LEAP YEAR GENERATOR!".center(table_length)
puts

puts "The first leap year in the modern sense was 1752,".center(table_length)
puts "when 11 days were'lost' from the month September".center(table_length)
puts "with the adoption of the Gregorian calendar by".center(table_length)
puts "Britain and her colonies. After 1752 we adopted".center(table_length)
puts "the system still in use today where an additional day".center(table_length)
puts "is inserted in February in years wholly divisible".center(table_length)
puts "by four, other than years ending in 00".center(table_length)
puts "with the exception of those divisible by 400".center(table_length)
puts "which are still leap years (like 2000).".center(table_length)
puts
puts "This Leap Year Generator therefore only".center(table_length)
puts "recognizes leap years falling on or after".center(table_length)
puts "the year 1752.  Thank you for your understanding.".center(table_length)
puts

while true
print "Please enter the starting year: "
start_year = gets.chomp.to_i
  if start_year < 1752
    puts "Please enter a year no earlier than 1752."
    puts "Long live the Queen!"
  elsif start_year >= 1752
    puts "Thank you."
    break
  end
end

print "Now please enter an ending year: "
while true
  end_year = gets.chomp.to_i
  if start_year > end_year && end_year > 0
    print "I'm sorry #{end_year} occured before #{start_year}. Please try again: "
  elsif end_year <= 0
      print "Please enter a date no earlier than #{start_year}: "
  else
      puts "Thank you."
      puts
      break
  end
end

puts "STARTING YEAR: #{start_year}".ljust(table_length/2) + "ENDING YEAR: #{end_year}".rjust(table_length/2)
puts
puts "LEAP YEARS".center(table_length)
year = start_year
counter = 0
while year <= end_year
  if year % 4 != 0
    year += 1
  else
    if year % 100 == 0 && year % 400 != 0
      year +=1
    else
      puts "#{year}".center(table_length)
      year +=1
      counter +=1
    end
  end
end

puts
if counter == 0
  puts "No leap years fell between #{start_year} & #{end_year}.".center(table_length)
else
  puts "TOTAL NUMBER OF LEAP YEARS: #{counter}".center(table_length)
end
puts
puts "GOOD-BYE".center(table_length)
puts

