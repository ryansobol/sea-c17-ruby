#### No spaces before `[`

```ruby
# bad
some_array [42]

# good
some_array[42]
```


#### No spaces after `[` or before `]`

```ruby
# bad
some_array[ 42 ]

# good
some_array[42]
```


#### Prefer `{...}` over `do...end` for single-line iterator blocks

```ruby
# bad
[1, 2, 3].each do |num|
  puts num
end

# good
[1, 2, 3].each { |num| puts num }
```


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


#### No spaces before `(`

```ruby
# bad
some_method (42)

# good
some_method(42)
```


#### No spaces after `(` or before `)`

```ruby
# bad
some_method( 42 )

# good
some_method(42)
```


#### Omit parentheses when defining methods without parameters

```ruby
# bad
def some_method()
 # body omitted
end

# good
def some_method
 # body omitted
end
```


#### Use parentheses when defining methods with parameters

```ruby
# bad
def some_method param1, param2
 # body omitted
end

# good
def some_method(param1, param2)
 # body omitted
end
```


#### Remember, externally defined local variables do not work inside methods

```ruby
# doesn't work
x = 42

def some_method
  x
end

some_method # => NameError: undefined local variable or method `x'

# does work
x = 42

def some_method(param)
  param
end

some_method(x) # => 42
```


#### Use empty lines between method definitions

```ruby
# bad
def some_method
  # body omitted
end
def another_method
  # body omitted
end

# good
def some_method
  # body omitted
end

def another_method
  # body omitted
end
```


#### Omit `return` for a method's last expression

```ruby
# bad
def some_method
  return 42
end

# good
def some_method
  42
end
```


#### Use `return` to prematurely exit a method

```ruby
# bad
def some_method(param)
  if param == 42
    true
  else
    false
  end
end

# good
def some_method(param)
  return true if param == 42
  false
end
```
