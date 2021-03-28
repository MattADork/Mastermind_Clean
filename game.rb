def spawn_random_code
  random_values_numbers = initialize_values
  random_values_letters = convert_to_letters(random_values_numbers)
  spaced_random_code = space_out_code(random_values_letters)
  return spaced_random_code
end