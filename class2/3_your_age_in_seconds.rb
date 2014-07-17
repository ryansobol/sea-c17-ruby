# Section 2.5 on page 12
# 4 points
#
# How many seconds old are you? (I’m not going to check your answer, so be as
# accurate — or not — as you want.)

current_time = Time.new
birth_time = (365 * 10 + 288) * 24 * 60 * 60 + (4 * 60 * 60)
#This is a manual calculation of the difference in seconds between my birth time & the Epoch: Jan 1. 1970

Time.at(birth_time)
#Get the actual date & time of birth to double check

time_since_birth = current_time - birth_time


puts Time.at(birth_time)
#puts current_time

puts "It has been #{time_since_birth.to_i} seconds since Jeff was born"
