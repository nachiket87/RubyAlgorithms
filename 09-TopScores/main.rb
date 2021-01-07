# frozen_string_literal: true

# don't use sort.reverse genius. It is not efficient for this question. You must do this in O(n) time. sort.reverse will give you O(nLog n) time.

def sorted_scores(unsorted_scores, highest_score)
  score_counts = Array.new(101, 0) # 101 because it has to be inclusive of 100

  unsorted_scores.each do |score|
    score_counts[score] += 1
  end

  sorted_scores = []

  highest_score.downto(0) do |score|
    count = score_counts[score]

    count.times do |_time|
      sorted_scores.push(score)
    end
  end

  sorted_scores
end
