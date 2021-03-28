def colorize_array(value)
  if value == "  A  "
    return value.colorize(:color => :white, :background => :red)
  elsif value == "  B  "
    return value.colorize(:color => :white, :background => :green)
  elsif value == "  C  "
    return value.colorize(:color => :white, :background => :magenta)
  elsif value == "  D  "
    return value.colorize(:color => :white, :background => :blue)
  elsif value == "  E  "
    return value.colorize(:color => :white, :background => :cyan)
  elsif value == "  F  "
    return value.colorize(:color => :white, :background => :yellow)
  end
end

def print_out_colored_array(array)
  i = 0
  while i < array.length
    print colorize_array(array[i]) + " "
    i += 1
  end
end