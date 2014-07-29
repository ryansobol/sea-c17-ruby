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

def b_day(name)

name = name.capitalize

Dir.chdir('/Users/balinlarson/Projects/CF/sea-c17-ruby/class6/')

read = Hash.new
read = File.read('birth_dates.yml')
h = YAML.load(read)

h.each do |n, d|
  if n == name
    cur = Time.new
    # need to create a date object
    b_day = cur.year - date.year
    if cur.month < date.month #not bday yet
    b_day -= 1
    elsif cur.month == date.month #it is bday month
      if cur.day > date.day #not date yet in month
      b_day -= 1
      end
    end
    date.year += 1
    puts "#{name} will be #{b_day} on #{date}"
  end
end
end

name = ARGV.first

if name.nil?
  puts "Usage: 3_birthday_helper_read.rb NAME"
  exit
end

b_day(name)


