def prompt
  print '> '
end

def explains_game
  puts
  puts "Each X represents an exact match"
  puts "Each O represents a correct value in the wrong place"
  puts
end

def load_game_message
  puts
  puts "Welcome to my console version of Mastermind!"
  puts "You'll have 12 turns to crack the code, each turn"
  puts "guess four letters from A to F, and you'll be notified"
  puts "of how many EXACT matches you have, and how many"
  puts "correct values you have in the wrong place."
  puts
end

def ask_to_create_own_code
  puts
  puts "Do you want to create your own code? (y/n)"
  prompt
  return gets.chomp.downcase
end
  
def ask_if_computer_solving
  puts
  puts "Do you want the computer to solve your code?"
  prompt
  return gets.chomp.downcase
end

def ask_to_play_again
  puts
  puts "Do you want to play again? (y/n)"
  prompt
  return gets.chomp.downcase
end

def sorry_you_lose
  puts "Sorry... All out of guesses, you've lost the game!"
  ask_to_play_again
end

def print_exact_answers(int)
  print "     "
  print "X ".green * int
end

def print_close_answers(int)
  print "X ".yellow * int
end