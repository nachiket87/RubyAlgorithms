# frozen_string_literal: true

# def reverse_words(string)
#   string.split.reverse.join(" ") # easy way.
# end

def reverse_words!(message)
  # first we reverse the entire thing
  reverse_characters!(message, 0, message.length - 1)

  current_start = 0

  # then we reverse each word
  (0..message.length).each do |i|
    # keep going unless message is over or we found a space
    next unless i == message.length || message[i] == ' '

    # if we found a space reverse the word

    reverse_characters!(message, current_start, i - 1)

    # start the next word ... we already know that there can only be 1 space

    current_start = i + 1
  end

  message # don't need to return but doing this to test spec
end

def reverse_characters!(message, left_index, right_index)
  # Walk towards the middle, from both sides.
  while left_index < right_index

    # Swap the left char and right char.
    message[left_index], message[right_index] =
      message[right_index], message[left_index]

    left_index  += 1
    right_index -= 1
  end
end
