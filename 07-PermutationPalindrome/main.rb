# frozen_string_literal: true

require 'set'

def is_palindrome?(string)
  char_set = Set.new

  (0...string.length).each do |i|
    char = string[i]

    if char_set.include? char
      char_set.delete(char)
    else
      char_set.add(char)
    end
  end
  char_set.length <= 1
end
