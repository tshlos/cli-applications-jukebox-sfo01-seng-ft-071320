# Add your code here
require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  i = 0
  songs.each_with_index do |song|
    i += 1
    puts "#{i}. #{song}"
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  
  if input.to_i > 0 && input.to_i < 10
    puts "Playing #{songs[input.to_i - 1]}"
    return
  elsif songs.include?(input)
    puts "Playing #{input}"
    return
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  puts "Please enter a command:"
  input = gets.strip

  if input == "exit"
    exit_jukebox
  elsif input == "list"
    list(songs)
    run(songs)
  elsif input == "play"
    play(songs)
    run(songs)
  else
    help
    run(songs)
  end
end