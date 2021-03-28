def initialize_values
  value1 = rand 1..6
  value2 = rand 1..6
  value3 = rand 1..6
  value4 = rand 1..6
  values = [value1, value2, value3, value4]
  return values
end

def convert_to_letters(array)
  new_array = array.map do |value|
    if value == 1
      value = "A"
    elsif value == 2
      value = "B"
    elsif value == 3
      value = "C"
    elsif value == 4
      value = "D"
    elsif value == 5
      value = "E"
    elsif value == 6
      value = "F"
    elsif value == "A"
      value = "A"
    elsif value == "B"
      value = "B"
    elsif value == "C"
      value = "C"
    elsif value == "D"
      value = "D"
    elsif value == "E"
      value = "E"
    elsif value == "F"
      value = "F"
    else
      puts
      puts "Sorry, that code won't work, let's start from the beginning."
      puts main
    end
  end
end

def space_out_code(array)
  edited_array = array.map { |word| word.gsub('  ', '') }
  spaced_array = edited_array.map do |value|
    value = "  " + value + "  "
  end
  return spaced_array
end

def check_code(string)
  string_split = string.split("")
  string_split.each do |value|
    if value == "A" or value == "B" or value == "C" or value == "D" or value == "E" or value == "F"
    else
      puts "Hey, I told you, only letters A through F are allowed!"
      return get_hidden_code
    end
  end
  return string_split
end

def check_guess(string)
  string_split = string.split("")
  string_split.each do |value|
    if value == "A" or value == "B" or value == "C" or value == "D" or value == "E" or value == "F"
    else
      puts "Hey, I told you, only letters A through F are allowed!"
      return player_guess
    end
  end
  return string_split
end