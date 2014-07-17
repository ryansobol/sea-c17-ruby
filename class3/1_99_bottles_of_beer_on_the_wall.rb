# Section 7.5 on page 49
# 4 points
#
# Write a program that prints out the lyrics to that beloved classic,
# "99 Bottles of Beer on the Wall."
i = 99
while i > 2
    puts "#{i} bottles of beer on the wall, #{i} bottles of beer, take one down"
    puts "pass it around, #{ i - 1 } bottles of beer on the wall!"
    puts " "
    i = i - 1
end

#for grammatical correctness when refering the the plurality of bottles
puts "2 bottles of beer on the wall, 2 bottles of beer, take one down"
puts "pass it around, 1 bottle of beer on the wall!!!!"
puts " "

puts "1 bottle of beer on the wall, 1 bottle of beer, take one down".upcase
puts "pass it around, NO MORE bottles of beer on the wall!!!!".upcase



