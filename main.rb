require 'colorize'
require 'io/console'
require_relative 'game'
require_relative 'values'
require_relative 'color'
require_relative 'messages'

def main
  game_over = false
  explains_game
  random_code = spawn_random_code
  print_out_colored_array(random_code)
end

load_game_message
main