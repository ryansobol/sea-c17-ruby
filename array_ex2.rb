foods = ['artichoke', 'brioche', 'caramel']
drinks = ['juice' ,'wine', 'shake']
puts foods
puts
puts foods.to_s
puts
puts foods.join(',')
puts
puts foods.join(':)') + ' 8)'
10.times do
  puts foods[0] + drinks [0]
end
