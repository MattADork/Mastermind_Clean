require 'colorize'
require 'io/console'
require_relative 'game'
require_relative 'values'
require_relative 'color'
require_relative 'messages'

def main
  explains_game
  random_code = spawn_random_code
  if ask_to_create_own_code == "y"
    custom_game
  else
    random_game(random_code)
  end
end

load_game_message
main