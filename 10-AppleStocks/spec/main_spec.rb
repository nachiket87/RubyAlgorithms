# frozen_string_literal: true

require './spec_helper'

require '../main'

describe 'get_max_profit' do
  it 'should consider price going up and then down' do
    expect(get_max_profit([1, 5, 3, 2])).to eq(4)
  end

  it 'should consder prices going down then up' do
    expect(get_max_profit([7, 2, 8, 9])).to eq(7)
  end

  it 'should calculate the right price if prics go up all day' do
    expect(get_max_profit([1, 6, 7, 9])).to eq(8)
  end

  it 'should return negative if prices go down all day' do
    expect(get_max_profit([9, 7, 4, 1])).to eq(-2)
  end

  it 'should return 0 if prices stay the same all day' do
    expect(get_max_profit([1, 1, 1, 1])).to eq(0)
  end

  it 'should raise error if empty array provided' do
    expect { get_max_profit([]) }.to raise_error
  end
end
