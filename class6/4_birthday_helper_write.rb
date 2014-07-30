#!/usr/bin/env ruby
#
# 4 points
#
# Write a program that reads birth_dates.yml, creates or updates a name and
# birth date entry, and then saves ALL the birth dates back to birth_dates.yml.
#
# For example:
#
#   $ 4_birthday_helper_write.rb Alex 1997 4 22
#   Birthday 1997-04-22 00:00:00 UTC saved for Alex
#
# The program should also handle names that are not capitalized:
#
#   $ ruby 4_birthday_helper_write.rb jane 1984 11 21
#   Birthday 1984-11-21 00:00:00 UTC saved for Jane
#
# The program should also be compatible with 3_birthday_helper_read.rb.
#
#   $ ruby 4_birthday_helper_write.rb Frank 1944 1 29
#   Birthday 1944-01-29 00:00:00 UTC saved for Frank
#
#   $ ruby 3_birthday_helper_read.rb Frank
#   Frank will be 71 on 2015-01-29
#
# A few methods that may help you:
#
#   File.open(file_path, "w") do |file| ... end
#
#     Opens the file_path for writing and allows the block to write String.
#     content to the file.
#
#     File.open("file.txt", "w") do |file|
#       file.write "Hello world"
#     end
#
#   YAML.dump(obj) → String
#
#     Parses an Object and returns a YAML formatted string.
#
#     YAML.dump("foo")                #=> "--- foo\n...\n"
#     YAML.dump({ "foo" => "bar" })   #=> "---\nfoo: bar\n"

require 'yaml'

name = ARGV[0].capitalize
year = ARGV[1].to_i
month = ARGV[2].to_i
day = ARGV[3].to_i

if name.nil? || year == 0 || month == 0 || day == 0
  puts "Usage: 4_birthday_helper_write.rb NAME YEAR MONTH DAY"
  exit
end

birth_dates      = File.read("birth_dates.yml")
birth_dates_hash = YAML.load(birth_dates)
birth_date_time = Time.utc(year, month, day)

def yaml_save(object, filename)
  File.open filename, 'w' do |file|
    file.write object.to_yaml
  end
end

if birth_dates_hash.has_key?(name)
  birth_dates_hash[name] = birth_date_time
  yaml_save(birth_dates_hash,'birth_dates.yml')
else
  birth_dates_hash[name] = birth_date_time
  yaml_save(birth_dates_hash,'birth_dates.yml')
end
