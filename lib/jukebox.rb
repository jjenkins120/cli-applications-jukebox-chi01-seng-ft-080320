require "pry"
=begin
def say_hello(name)
  "Hi #{name}!"
end

puts "Enter your name:"
user_name = gets.strip

puts say_hello(user_name)

The help command should output instructions for the user on how to use the jukebox.
The list command should output a list of songs that the user can play.
The play command should ask a user to input a song name or track number. It should then output the appropriate song name.
If the user types exit, the jukebox should say goodbye and the program should shut down.
=end

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
  songs.each_with_index do |object, index|
  index_plus_one = index + 1
  puts "#{index_plus_one}. #{object}"
  end
end 
#need to revisit this method so that song name and index number work
def play(songs)
  puts "Please enter a song name or number:"
  chosen_song = gets.strip
  songs.each do |object|
    if chosen_song == object
      puts "Playing #{object}."
    #elsif
    else
      puts "Invalid input, please try again"
      play(songs)
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end 

#also needs work
def run
  puts "Please enter a command:"
  chosen_command = gets.strip.to_s
  if chosen_command == "help"
    help
    run
  elsif chosen_command == "play"
    play
    run
  elsif chosen_command == "help"
    help
    run
  elsif chosen_command == "exit"
    exit_jukebox
  end
end 

