# frozen_string_literal: true

require './spec_helper'

require '../main'

describe 'returns product of the top 3 numbers in an array' do
  it 'should return 24' do
    expect(highest_product_of_3([1, 2, 3, 4])).to eq(24)
  end
  it 'should consider negative numbers' do
    expect(highest_product_of_3([-10, 1, 3, 2, -10])).to eq(300)
  end
end
