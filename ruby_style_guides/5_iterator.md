## Iterator Guidelines

#### Prefer `{...}` over `do...end` for single-line iterator blocks

```ruby
# bad
[1, 2, 3].each do |element|
  puts element
end

# good
[1, 2, 3].each { |e| puts e }
```

**TIP:** Name the parameter `e` for single-line iterator blocks


#### Prefer `each` over `for` because of their block scope

```ruby
# bad
for item in [1, 2, 3] do
  puts item
end

# item is accessible outside the for loop
item # => 3

# good
[1, 2, 3].each { |item| puts item }

# item is not accessible outside the each block
item # => NameError: undefined local variable or method `item'
```


#### Prefer `each` over `for` because of their container's scope

```ruby
# bad
item = 99

for item in [1, 2, 3] do
  puts item
end

# item is accessible outside the for loop
item # => 3

# good
item = 99

[1, 2, 3].each { |item| puts item }

# item is not accessible outside the each block
item # => 99
```


#### Use `next` to prematurely skip to the next iteration

```ruby
# bad
[1, 2, 3].each do |item|
  if item >= 2
    puts item
  end
end

# good
[1, 2, 3].each do |item|
  next if item < 2
  puts item
end
```

#### Use `break` to prematurely exit an iterator

```ruby
# bad
[1, 2, 3].each do |item|
  if item < 2
    puts item
  end
end

# good
[1, 2, 3].each do |item|
  break if item >= 2
  puts item
end
```

#### Use `next` to prematurely skip to the next iteration

```ruby
# bad
{ "one" => 1, "two" => 2, "three" => 3 }.each do |key, value|
  if value >= 2
    puts key
  end
end

# good
{ "one" => 1, "two" => 2, "three" => 3 }.each do |key, value|
  next if value < 2
  puts key
end
```

#### Use `break` to prematurely exit an iterator

```ruby
# bad
{ "one" => 1, "two" => 2, "three" => 3 }.each do |key, value|
  if value < 2
    puts key
  end
end

# good
{ "one" => 1, "two" => 2, "three" => 3 }.each do |key, value|
  break if value >= 2
  puts key
end
```

#### Rely on the definition order

```ruby
# bad
{ "two" => 2, "one" => 1 }.each { |k, v| puts "#{k} is #{v}" }

# good
{ "one" => 1, "two" => 2 }.each { |k, v| puts "#{k} is #{v}" }
```

#### Never modify while iterating

```ruby
some_hash = { "one" => 1, "two" => 2 }

# bad
some_hash.each { |key, value| some_hash[key] = value + 1 }

# good
temp = {}
some_hash.each { |key, value| temp[key] = value + 1 }
```
