# Section 7.5 on page 49
# 4 points
#
# Whatever you say to Grandma (whatever you type in), she should respond with
# this:
#
# HUH?! SPEAK UP, SONNY!
#
# unless you shout it (type in all capitals). If you shout, she can hear you
# (or at least she thinks so) and yells back:
#
# NO, NOT SINCE 1938!
#
# To make your program really believable, have Grandma shout a different year
# each time, maybe any year at random between 1930 and 1950. (This part is
# optional and would be much easier if you read the section on Ruby’s random
# number generator on page 33.) You can’t stop talking to Grandma until you
# shout BYE.
#
# Hint 1: Don’t forget about chomp! 'BYE' with an Enter at the end is not the
# same as 'BYE' without one!
#
# Hint 2: Try to think about what parts of your program should happen over and
# over again. All of those should be in your while loop.
#
# Hint 3: People often ask me, “How can I make rand give me a number in a range
# not starting at zero?” But you don’t need it to. Is there something you could
# do to the number rand returns to you?

puts "You knock on Grandma's door.  You know she's home but there is no answer."
puts  "You ring the alarmingly loud doorbell.  Finally you here Grandma say:"
puts '"WHO IS IT?"'
name = gets.chomp
puts 'There\'s a long pause, then: "OH NEVER MIND THEN, COME ON IN!"'
puts "You find the door unlocked and on the other side of it is grandma,"
puts "sitting in her favorite rocker."
puts '"OH, IT\'S YOU ' + name.upcase + '! WHY DIDN\'T YOU SAY?"'
puts '"NEVER MIND, NEVER MIND. SIT! TELL ME, WHAT DO YOU HAVE TO ALLOW?"'

while true
salutation = gets.chomp
  if salutation == salutation.upcase && salutation == "BYE"
  puts '"SO GOOD TO SEE YOU ' + name.upcase + '!'
  puts 'PLEASE GET THE DOOR ON YOUR WAY OUT!"'
  break
  elsif salutation == salutation.upcase
  int = rand(21)
  year = 1930 + int
  puts "\"OH NO DEAR, NOT SINCE #{year}! NOW GO ON, TELL ME MORE.\""
  elsif salutation != salutation.upcase
puts "\"HUH? OH DO SPEAK UP, #{name.upcase}, YOU ALWAYS WERE SO MEEK!\""
  end
end
