# frozen_string_literal: true

# not solved by me - Dynamic Programming est pas bonne

def change_possibilities_bottom_up(amount, denominations)
  ways_of_doing_n_cents = [1] + Array.new(amount, 0)

  denominations.each do |coin| # 1
    (coin..amount).each do |higher_amount|
      higher_amount_remainder = higher_amount - coin
      ways_of_doing_n_cents[higher_amount] += ways_of_doing_n_cents[higher_amount_remainder]
    end
  end

  ways_of_doing_n_cents[amount]
end
