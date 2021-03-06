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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each do |x|
    puts x
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if songs.include?(user_input)
    puts "Playing #{user_input}"
  elsif user_input == "exit"
    exit_jukebox
  else
    convert2Numb = user_input.to_i
    if convert2Numb == 0
      puts "Invalid input, please try again"
    elsif convert2Numb <= songs.length
      puts "Playing #{songs[convert2Numb - 1]}"
    else
      puts "Invalid input, please try again"
    end
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  answer = ""

  until answer == "exit"
    if user_input == "exit"
      exit_jukebox
      answer = user_input
    elsif answer == "play"
      play(songs)
      puts "Please enter a command:"
      user_input = gets.chomp
      answer = user_input
    elsif user_input == "help"
      help
      puts "Please enter a command:"
      user_input = gets.chomp
      answer = user_input
    elsif user_input == "list"
      list(songs)
      puts "Please enter a command:"
      user_input = gets.chomp
      answer = user_input
    end

  end

end
