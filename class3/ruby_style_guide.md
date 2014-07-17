## Ruby Style Guide

#### Use `!` instead of `not`

```ruby
# bad
not true

# good
!true
```

#### Favor modifier `if/unless` usage when you have a single-line body

```ruby
# bad
if some_condition
  do_something
end

# good
do_something if some_condition
```

#### Favor `unless` over `if` for negative conditions

```ruby
# bad
do_something if !some_condition

# bad
do_something if not some_condition

# good
do_something unless some_condition
```

#### Never use `unless` with `else`

```ruby
# bad
unless grade >= 75
  puts 'fail'
else
  puts 'pass'
end

# good
if grade >= 75
  puts 'pass'
else
  puts 'fail'
end
```

#### Never use `then` for multi-line `if/unless`

```ruby
# bad
if some_condition then
  # body omitted
end

# good
if some_condition
  # body omitted
end
```

#### Always put the condition on the same line as the `if/unless` in a multi-line conditional

```ruby
# bad
if
  some_condition
  do_something
  do_something_else
end

# good
if some_condition
  do_something
  do_something_else
end
```

#### Don't use parentheses around the condition of an `if/unless`

```ruby
# bad
if (x > 10)
  # body omitted
end

# good
if x > 10
  # body omitted
end
```

#### Favor modifier `while/until` usage when you have a single-line body

```ruby
# bad
while some_condition
  do_something
end

# good
do_something while some_condition
```

#### Favor `until` over `while` for negative conditions.

```ruby
# bad
do_something while !some_condition

# bad
do_something while not some_condition

# good
do_something until some_condition
```

#### Never use `do` for multi-line `while/until`

```ruby
# bad
while x > 5 do
  # body omitted
end

# good
while x > 5
  # body omitted
end
```

#### Always put the condition on the same line as the `while/until` in a multi-line conditional

```ruby
# bad
while
  some_condition
  do_something
  do_something_else
end

# good
while some_condition
  do_something
  do_something_else
end
```

#### Don't use parentheses around the condition of an `while/until`

```ruby
# bad
while (x > 10)
  # body omitted
end

# good
while x > 10
  # body omitted
end
```

#### Use `loop` instead of `while/until` when you need an infinite loop

```ruby
# bad
while true
  do_something
end

until false
  do_something
end

# good
loop do
  do_something
end
```

#### For post-loop tests, use `loop` with `break` rather than `begin/end while/until`

```ruby
# bad
begin
  input = gets.chomp
end until input == "stop"

# good
loop do
  input = gets.chomp
  break if input == "stop"
end
```
