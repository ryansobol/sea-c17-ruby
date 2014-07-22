def mystery
  count = 0

  loop do
    return count if count == 2
    count += 1
  end
end

puts mystery
