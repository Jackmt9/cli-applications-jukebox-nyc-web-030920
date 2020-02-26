def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  selection = gets.strip
  if songs.included?(selection)
    puts "Playing #{selection}"
  elsif selection.to_i == songs.length + 1
    puts "Playing #{songs[selection.to_i]}"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts index + ". " + song
  end
end 

def exit_jukebox
  puts "Goodbye."
end

def run
  
end