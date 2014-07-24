file_name = ARGV[0]
file_name = file_name.to_s

#Checks to see if file ends with .m3u extension & adds if it does not
is_m3u = file_name.end_with?(".m3u")
file_name = file_name + ".m3u" if is_m3u == false
file_blank = true if file_name == ""

#Writes this if the file name is blank
puts "Usage 2_build_a_shuffled_playlist_extended.rb PLAYLIST" if file_name == ""

var = "w" # default value is write. This will happen if playlister is run & if file doesn't exist.

def playlister(file_name, var)
puts "     -----------      "
Dir.pwd
  #Search song directory for mp3 and mp4 files and store in an array
  song_names = Dir['**/*.{mp3,MP3,m4a,M4A}']
  #randomize song names
  random_list = song_names.shuffle
  puts random_list #Remove

  #Writes to file
  f = File.open(file_name, var)
  f.puts song_names

  puts "  "
  puts "Created playlist.m3u with 16 songs"
  puts "     -----------      "
end

#Checks to see if file exists, if it exists then give warning
file_exists = File.exists?(file_name)

if file_exists == true
  valid_answer = false
  puts "WARNING: #{file_name} already exists"
  puts "(c)ancel, (o)verwrite, or (a)ppend"
  action = STDIN.gets.chomp ## Not totally sure why get.chomp doesn't work but this does
  while valid_answer == false
    if action == "c"
      puts "Canceled"
      valid_answer = true
    elsif action == "o"
      puts "Writing over"
      playlister(file_name, "w")
      valid_answer = true
    elsif action == "a"
      "Appending to existing file"
      playlister(file_name, "a")
      valid_answer = true
    else
      puts "Please enter c, o, or a"
      puts "(c)ancel, (o)verwrite, or (a)ppend"
      action = STDIN.gets.chomp
      valid_answer = false
    end
  end
else
  playlister(file_name, "w") #if file_blank == false
end


