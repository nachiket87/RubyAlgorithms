# frozen_string_literal: true

def word_cloud(string)
  keys = string.split(' ')
  answer = {}
  keys.each do |key|
    if answer[key].nil?
      answer[key] = 1
    else
      answer[key] += 1
    end
  end

  answer
end
