# Section 7.5 on page 49
# 4 points
#
# What if Grandma doesn’t want you to leave? When you shout BYE, she could
# pretend not to hear you. Change your previous program so that you have to
# shout BYE three times in a row. Make sure to test your program: if you shout
# BYE three times but not in a row, you should still be talking to Grandma.

puts "Grandma! It's so good to see you! I have a question for you:"
bye_var = "BYE"
bye_num = 0

while true
	question = gets.chomp
	if question == bye_var
		bye_num += 1
		puts "WHAT?! YOU WANT A FRENCH FRY?"
	else
		bye_num = 0
	end
	break if bye_num > 2

	if question == question.upcase && question != bye_var
		year = 1930 + rand(21)
		puts "NO, NOT SINCE #{year}!"
	else
		puts "HUH?!  SPEAK UP, SONNY!"
	end
end

puts "DON'T LET THEM PUT ME IN THAT NURSING HOME!"
		
		
		
