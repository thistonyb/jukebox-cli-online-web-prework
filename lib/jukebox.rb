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
#code here
def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, song_number|
  song_number += 1
  puts "#{song_number}." + song
  end
end

def play(songs)
  puts "Please enter a song name, or a song number:"
  user_request = gets.chomp
  songs.each_with_index do |song, song_number|
    song_number += 1
    if user_request == song || user_request == song_number
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end
