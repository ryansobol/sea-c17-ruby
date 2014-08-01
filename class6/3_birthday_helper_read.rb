#!/usr/bin/env ruby
#
# 4 points
#
# Write a program that reads in names and birth dates from birth_dates.yml.
# Given a name, it should output when that person's next birthday will be and
# how old they will be.
#
# For example:
#
#   $ 3_birthday_helper_read.rb Alex
#   Alex will be 78 on 2014-10-04
#
# The program should also handle names that are not capitalized:
#
#   $ ruby 3_birthday_helper_read.rb jane
#   Jane will be 56 on 2015-03-27
#
# And reject names that don't have a birth date:
#
#   $ ruby 3_birthday_helper_read.rb Andre3000
#   Unknown birth date for 'Andre3000'
#
# Hint: Represent a birth date as a Time on midnight in UTC.
#
# A few methods that may help you:
#
#   File.read(file_path) → String
#
#     Opens the file_path and returns the contents as a String.
#
#     File.read("file.txt")  #=> "Hello world!"
#
#   YAML.load(str) → Object
#
#     Parses a YAML formatted string and returns the resulting Object.
#
#     YAML.load("--- foo")          #=> "foo"
#     YAML.load("---\nfoo: bar\n")  #=> { "foo" => "bar" }
#
#   Time#strftime("%F") → String
#
#     Returns a Time as a String in YYYY-MM-DD format
#
#     Time.new.utc.strftime("%F")   #=> "2014-07-23"

require 'yaml'

name = ARGV.first

if name.nil?
  puts "Usage: 3_birthday_helper_read.rb NAME"
  exit
end

name = name.capitalize
birthday_table = YAML::load File.read("birth_dates.yml")

if birthday_table[name].nil?
  puts "Unknown birth date for '#{name}'"
  exit
end

birth = birthday_table[name]
present = Time.new.utc

b_year  = birth.year
b_month = birth.month
  if b_month <10
    b_month = "0#{b_month}".to_i
  end
b_day   = birth.day
p_year  = present.year
p_month = present.month
p_day   = present.day

if (p_month >= b_month && p_day >= b_day)
   last_birthday = p_year
   next_birthday = p_year + 1
 else
  last_birthday = p_year - 1
  next_birthday = p_year
end
age = last_birthday - b_year
n_bday_to_time = Time.utc(next_birthday, b_month, b_day, 00, 00).strftime("%F")

puts "#{name} will be #{age + 1} on #{n_bday_to_time}"
puts
