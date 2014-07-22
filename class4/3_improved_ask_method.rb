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

    if reply == "yes" || reply == "no"
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

puts ask('Do you like eating tacos?')
puts ask('Do you like eating burritos?')
puts ask('Do you like eating chimichangas?')
puts ask('Do you like eating bread?')
puts ask('Do you like eating bread?')
puts ask('Do you like eating bread?')
puts ask('Do you like eating toast?')
puts ask('Do you like eating dirt?')
puts ask('Do you like eating nachos?')
puts ask('Do you like eating thumbtacks?')

puts "DEBRIEFING:"
puts "This was actually pscyhological exam to test whether or not you are a bed wetter."
puts "The answer to whether or not you are a bedwetter is:"
puts "......."
puts "Well, I think you already know the answer to that question, don't you?."
puts "  "
