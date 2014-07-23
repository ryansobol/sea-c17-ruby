#!/usr/bin/env ruby
#
# Section 9.5 on page 68
# 4 points
#
# That ask method I showed you on page 66 was OK, but I bet you could do better.
# Try to clean it up by removing the answer variable. You’ll have to use return
# to exit from the loop. (Well, it will get you out of the whole method, but it
# will get you out of the loop in the process.)
#
# Hint: I've already structured your program. Aren't you lucky? :)

def ask(question)
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return true
      else
        return false
      end
      break
    else
      puts 'Please answer "yes" or "no"'
    end
  end
end

puts "Hello, and thank you for..."
puts

ask "Do you like eating tacos?"
ask "Do you like eating burritos?"
wets_bed = ask "Do you wet the bed?"
ask 'Do you like chimichangas?'
puts "Just a few more questions"
ask "Do you like drinking horchata?"
ask "Do you like eating fautas?"
puts
puts "DEBRIEFING"
puts wets_bed
