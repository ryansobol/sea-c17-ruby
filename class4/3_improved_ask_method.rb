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

def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if reply == "yes"
      return true
    else
      if reply == "no"
        return false
      else
        puts "Please answer \"yes\" or \"no\"."
      end
    end
  end
end

puts ask('Do you like eating tacos?')
ask "Do you like eating burritos?"   #And this one
wets_bed = ask "Do you wet the bed?" #Save this return value
ask "Do you like eating chimichanga?"
ask "Do you like eating sopapilas?"
puts "Just a few more questions..."
ask "Do you like drinking horchata?"
ask "Do you like eating flautas?"
puts
puts "DEBRIEFING"
puts "Thank you for..."
puts
puts wets_bed
