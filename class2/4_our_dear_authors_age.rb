# Section 2.5 on page 12
# 4 points
# If I am 1,160 million seconds old (which I am, though I was somewhere in the
# 800 millions when I started this book), how old am I?


require 'time'
$time = Time.new()

def is_a_leap_year(year)
	@year = year
	if @year % 4 == 0 && @year % 100 != 0 || @year % 400 == 0
		return true 
	else
		return false
	end
end

def date_n_seconds_ago(seconds)
	year = $time.year
	days = seconds / (60 * 60 * 24)
	month = $time.month - 2
	days -= $time.day
	days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
	while days >= 365 || (is_a_leap_year(year) && days >= 366)
		if is_a_leap_year(year)
			days -= 366
		else
			days -= 365
		end
		year -= 1
	end
	while (!is_a_leap_year(year) && days >= days_in_month[month]) || (is_a_leap_year(year) && (days >= days_in_month[month] || month == 1 && days >= 29)) 
		days -= days_in_month[month]
		if month == 0
			month = 11
			year -= 1
		elsif month == 1 && is_a_leap_year(year)
			days -= 1
			month -= 1000
		else
			month -= 1
		end
	end
	day = days_in_month[month] - days
	return "DOB: #{month+1}/#{day}/#{year} \nThe author is #{$time.year - year} years old"
end
puts date_n_seconds_ago(1160000000)
