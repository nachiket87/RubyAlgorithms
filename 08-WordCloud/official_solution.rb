# frozen_string_literal: true

class WordCloudData
  attr_accessor :words_to_counts

  def initialize(input_string)
    @words_to_counts = {}
    populate_words_to_counts(input_string)
  end

  def populate_words_to_counts(input_string)
    # Iterates over each character in the input string, splitting
    # words and passing them to add_word_to_hash().

    current_word_start_index = 0
    current_word_length = 0

    input_string.each_char.with_index do |character, index|
      # If we reached the end of the string we check if the last
      # character is a letter and add the last word to our hash.
      if index == input_string.length - 1
        current_word_length += 1 if letter?(character)
        if current_word_length.positive?
          current_word = input_string.slice(current_word_start_index,
                                            current_word_length)
          add_word_to_hash(current_word)
        end

      # If we reach a space or emdash we know we're at the end of a word,
      # so we add it to our hash and reset our current word.
      elsif [' ', "\u2014"].include?(character)
        if current_word_length.positive?
          current_word = input_string.slice(current_word_start_index,
                                            current_word_length)
          add_word_to_hash(current_word)
          current_word_length = 0
        end

      # We want to make sure we split on ellipses so if we get two periods in
      # a row we add the current word to our hash and reset our current word.
      elsif character == '.'
        if index < input_string.length - 1 && input_string[index + 1] == '.' && current_word_length.positive?
          current_word = input_string.slice(current_word_start_index,
                                            current_word_length)
          add_word_to_hash(current_word)
          current_word_length = 0
        end

      # If the character is a letter or an apostrophe, we add it to our current word.
      elsif letter?(character) || character == '\''
        current_word_start_index = index if current_word_length.zero?
        current_word_length += 1

      # If the character is a hyphen, we want to check if it's surrounded by letters.
      # If it is, we add it to our current word.
      elsif character == '-'
        if index.positive? && letter?(input_string[index - 1]) &&
           letter?(input_string[index + 1])
          current_word_length += 1
        elsif current_word_length.positive?
          current_word = input_string.slice(current_word_start_index,
                                            current_word_length)
          add_word_to_hash(current_word)
          current_word_length = 0
        end
      end
    end
  end

  def add_word_to_hash(word)
    # If the word is already in the hash we increment its count.
    if @words_to_counts.include? word
      @words_to_counts[word] += 1

    # If a lowercase version is in the hash, we know our input word must be uppercase
    # but we only include uppercase words if they're always uppercase,
    # so we just increment the lowercase version's count.
    elsif @words_to_counts.include? word.downcase
      @words_to_counts[word.downcase] += 1

    # If an uppercase version is in the hash, we know our input word must be lowercase.
    # Since we only include uppercase words if they're always uppercase, we add the
    # lowercase version and give it the uppercase version's count.
    elsif @words_to_counts.include?(word.capitalize)
      @words_to_counts[word] = 1
      @words_to_counts[word] += @words_to_counts[word.capitalize]
      @words_to_counts.delete(word.capitalize)

    # Otherwise, the word is not in the hash at all, lowercase or uppercase,
    # so we add it to the hash.
    else
      @words_to_counts[word] = 1
    end
  end

  def letter?(character)
    'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'.include?(character)
  end
end
