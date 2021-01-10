# frozen_string_literal: true

class WordCloudData
  attr_reader :words_to_counts

  def initialize(input_string)
    # Count the frequency of each word.
    @input_string = input_string
    @words_to_counts = {}
    split_words
  end

  def split_words
    keys = @input_string.split(/[^\w'-]/)
    keys.each do |key|
      if @words_to_counts[key].nil?
        @words_to_counts[key] = 1 unless key == ''
      else
        @words_to_counts[key] += 1 unless key == ''
      end
    end
  end
end
