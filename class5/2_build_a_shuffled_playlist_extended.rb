#!/usr/bin/env ruby
#
# 4 points
#
# Extend the playlist program with some user-friendly features.
#
# 1. Allow a user to specify the name of the playlist file as a command line
# argument. The program should accept file names with and without a .m3u
# extension. For example:
#
#   $ ruby 2_build_a_shuffled_playlist_extended.rb salsa
#   => Build a shuffled playlist
#   => Created salsa.m3u with 16 songs
#
# If no name is given, the program should output a helpful usage message and
# immediately exit. For example:
#
#   $ ruby 2_build_a_shuffled_playlist_extended.rb
#   Usage: 2_build_a_shuffled_playlist_extended.rb PLAYLIST
#
# 2. If the playlist file already exists, the program should ask the user to
# either cancel the operation, overwrite the file with new content, or append
# new content to the end of the file. For example
#
#   $ ruby 2_build_a_shuffled_playlist_extended.rb salsa.m3u
#   => Build a shuffled playlist
#   => WARNING: salsa.m3u already exists
#   => (c)ancel, (o)verwrite, or (a)ppend > c
#   => Canceled
#
#   $ ruby 2_build_a_shuffled_playlist_extended.rb salsa.m3u
#   => Build a shuffled playlist
#   => WARNING: salsa.m3u already exists
#   => (c)ancel, (o)verwrite, or (a)ppend > o
#   => Overwrote salsa.m3u with 16 songs
#
#   $ ruby 2_build_a_shuffled_playlist_extended.rb salsa.m3u
#   => Build a shuffled playlist
#   => WARNING: salsa.m3u already exists
#   => (c)ancel, (o)verwrite, or (a)ppend > a
#   => Appended salsa.m3u with 16 songs
#
# A few methods you might find useful are:
#
#   String#end_with?(suffix) → true or false
#
#     Returns true if the string ends with the given suffix, otherwise false.
#
#     "code.rb".end_with?(".rb")   #=> true
#
#   File.exists?(file_name) → true or false
#
#     Return true if the named file exists, otherwise false.
#
#   File.open(file_name, mode) { |file|  }
#
#     Opens file_name with a "mode" and then passes the opened file to a block.
#     Possible modes include:
#
#     "w"   Truncates an existing file to zero length or creates a new file for
#           writing.
#
#     "a"   Starts at end of a file, if it exists, otherwise creates a new file
#           for writing.

# your code here

def playlist(filename)


work_dir = '/Users/balinlarson/Projects/CF/sea-c17-ruby/class5'
Dir.chdir work_dir

#fill song_names with all m4a and mp3 files in songs dir
song_names = Dir['songs/*.{mp3,m4a}']

#shuffle the playlist
song_names.shuffle!
res = ""

#check if file exists
if File.exist?(filename)
  puts "=> WARNING: " + filename + " already exists!"
  print "=> (c)ancel, (o)verwrite, or (a)ppend: "
  #for some reason gets.chomp alone didn't wait here $stdin makes sure it waits
  res = $stdin.gets.chomp
else
  #open file and write all the song names
  File.open filename, 'w' do |s|
    for i in 0..song_names.length
      if i == song_names.length
      s.write song_names[i].to_s
      else
      s.write song_names[i].to_s + "\n"
      end
    end
  end
end

#logic for cancel, overwrite, append
if res == "c"
  puts "=> Canceling operation...\n"
  exit

elsif res == "o"

  #open file (overwrite) and write all the song names
  File.open filename, 'w' do |s|
    for i in 0..song_names.length
      if i == song_names.length
      s.write song_names[i].to_s
      else
      s.write song_names[i].to_s + "\n"
      end
    end
  end

puts "=> Overwrote playlist.m3u with " + song_names.length.to_s + " songs."

elsif res == "a"

  #open file (append) and write all the song names
  File.open filename, 'a' do |s|
    for i in 0..song_names.length
      if i == song_names.length
      s.write song_names[i].to_s
      else
      s.write song_names[i].to_s + "\n"
      end
    end
  end

  puts "=> Appended " + song_names.length.to_s + " songs to playlist.m3u."

end

  puts "=> Playlist located in " + work_dir + ".\n\n"

end

#-----------------------------------------------------------------------------#
# take argument from terminal
input = ARGV[0]

# empty string?
if input.to_s.empty?
  puts "\nUsage: 2_build_a_shuffled_playlist_extended.rb PLAYLIST_NAME\n\n"
  exit
else
# reassign to remove 'frozen string' issue when appending
name = input.dup
end

if !name.include? ".m3u"
  name << ".m3u"
end

puts "\n=> Building a shuffled playlist called " + name

playlist name

