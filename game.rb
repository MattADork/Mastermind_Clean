def spawn_random_code
  random_values_numbers = initialize_values
  random_values_letters = convert_to_letters(random_values_numbers)
  spaced_random_code = space_out_code(random_values_letters)
  return spaced_random_code
end

def get_hidden_code
  puts "Pick a random code (Use letters from A to F)"
  code = STDIN.noecho(&:gets).chomp.upcase
  unless code.length == 4
    puts "Sorry, the code has to be exactly four letters long"
    return get_hidden_code
  end
  check_code(code)
  return space_out_code(code.split(""))
end

def custom_game_computer
  turns = 1
  code = get_hidden_code
  while turns < 10000
    guess = computer_guess(turns)
    computer_accuracy = compare_computer(code, guess)
    print_out_colored_array(guess)
    print_exact_answers(computer_accuracy[0])
    print_close_answers(computer_accuracy[1])
    gets.chomp
    turns += 1
  end
end

def custom_game_self
  turns = 0
  code = get_hidden_code
  while turns < 13
    guess = player_guess
    accuracy = compare(code, guess)
    print_out_colored_array(guess)
    print_exact_answers(accuracy[0])
    print_close_answers(accuracy[1])
    turns += 1
  end
end

def custom_game
  if ask_if_computer_solving == "y"
    return custom_game_computer
  else
    return custom_game_self
  end
end

def random_game(code)
  turns = 1
  while turns < 13
    puts "[Turn #{turns}/12]"
    guess = player_guess
    accuracy = compare(code, guess)
    print_out_colored_array(guess)
    print_exact_answers(accuracy[0])
    print_close_answers(accuracy[1])
    turns += 1
  end
end

def player_guess
  puts "Go ahead and take a guess (Use four letters from A to F)"
  guess = gets.chomp.upcase
  unless guess.length == 4
    puts "Make sure your guess is 4 letters long, and only uses letters from A to F"
    return player_guess
  end
  final_guess = check_guess(guess)
  return space_out_code(final_guess)
end

def computer_guess(turns)
  string_turns = turns.to_s
  puts "The computer has taken #{string_turns} turns so far"
  return spawn_random_code
end

def compare(code, guess)
  exact = 0
  close = 0
  if code[0] == guess[0]
    exact += 1
    close -= 1
  end
  if code[1] == guess[1]
    exact += 1
    close -= 1
  end
  if code[2] == guess[2]
    exact += 1
    close -= 1
  end
  if code[3] == guess[3]
    exact += 1
    close -= 1
  end
  sorted_code = code.sort
  sorted_guess = guess.sort
  intersect = (sorted_code & sorted_guess).flat_map { |n| [n]*[sorted_code.count(n), sorted_guess.count(n)].min }
  close += intersect.length
  exact_close = [exact, close]
  if guess[0] == code [0] and guess[1] == code [1] and guess[2] == code [2] and guess[3] == code [3]
    puts
    print_out_colored_array(guess)
    puts
    puts "Congratulations! You won the game!"
    play_again
  end
  return exact_close
end

def compare_computer(code, guess)
  exact = 0
  close = 0
  if code[0] == guess[0]
    exact += 1
    close -= 1
  end
  if code[1] == guess[1]
    exact += 1
    close -= 1
  end
  if code[2] == guess[2]
    exact += 1
    close -= 1
  end
  if code[3] == guess[3]
    exact += 1
    close -= 1
  end
  sorted_code = code.sort
  sorted_guess = guess.sort
  intersect = (sorted_code & sorted_guess).flat_map { |n| [n]*[sorted_code.count(n), sorted_guess.count(n)].min }
  close += intersect.length
  exact_close = [exact, close]
  if guess[0] == code [0] and guess[1] == code [1] and guess[2] == code [2] and guess[3] == code [3]
    puts
    print_out_colored_array(guess)
    puts
    puts "Congratulations! You won the game!"
    play_again
  end
  return exact_close
end

def play_again
  if ask_to_play_again == "y"
    return main
  else
    exit
  end
end