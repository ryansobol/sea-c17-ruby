# Section 2.5 on page 12
# 4 points
# How many seconds old are you? (I’m not going to check your answer, so be as
# accurate — or not — as you want.)
seconds_in_a_day = 60 * 60 * 24
days = 0
days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
def is_a_leap_year(year)
	if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
		return true 
	else
		return false
	end
end

days += 13
for m in 0..5
	days += days_in_month[m]
end
for y in 1995..2013
	if is_a_leap_year(y)
		days += 366
	else
		days += 365
	end
end
days -= 3
puts days * seconds_in_a_day