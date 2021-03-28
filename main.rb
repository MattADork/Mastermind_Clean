require 'colorize'
require 'io/console'
require_relative 'game'
require_relative 'values'
require_relative 'color'

def main
  random_code = spawn_random_code
  print_out_colored_array(random_code)
end

load_game_message
main