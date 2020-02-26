require 'pry'
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
  if songs.include?(selection)
    puts "Playing #{selection}"
  elsif selection.to_i == songs.length + 1
    puts "Playing #{songs[selection.to_i]}"
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts index.to_s + ". " + song
  end
end 

def exit_jukebox
  puts "Goodbye."
end

def run
  puts "Please enter a command:"
  selection = gets.strip
  
end