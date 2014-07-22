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
  # your solution here
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == "yes" || reply == "no")
      if reply == "yes"
        return true
      else
        return false
      end
    else
      puts 'Please answer "yes" or "no".'
    end
  end
end

puts "Hello, and thank you for taking the time to"
puts "help me with this experiment.  My experiment"
puts "has to do with the way people feel about"
puts "Mexican food.  Just think about Mexican food"
puts "and try to answer every question honestly,"
puts 'with either a "yes" or "no".  My experiment'
puts "has nothing to do with bed-wetting."
puts

ask("Do you like eating tacos?")
ask("Do you like eating burritos?")
wets_bed = ask("Do you wet the bed?")
ask("Do you like eating chimichangas?")
ask("Do you like eating sopapillas?")
puts "Just a few more questions..."
ask("Do you like drinking horchata?")
ask("Do you like eating flautas?")

puts
puts "DEBRIEFING:"
puts "Thank you for taking the time to help with"
puts "this experiment.  In fact, this experiment"
puts "has nothing to do with Mexican food.  It is"
puts "an experiment about bed-wetting.  The Mexican"
puts "food was just there to catch you off guard"
puts "in the hopes that you would answer more"
puts "honestly.  Thanks again."
puts
puts wets_bed
