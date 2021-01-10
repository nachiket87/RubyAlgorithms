# frozen_string_literal: true

def reverse_string(string)
  string_array = string.split('')
  start = 0
  end_of_string = string_array.count - 1

  while start < end_of_string
    temp_char = string_array[end_of_string]
    string_array[end_of_string] = string_array[start]
    string_array[start] = temp_char
    start += 1
    end_of_string -= 1
  end

  string_array.join
end
