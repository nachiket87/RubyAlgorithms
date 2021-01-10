# frozen_string_literal: true

require '../main'
require './spec_helper'

describe 'In Flight Entertainment' do
  it 'should accept two arguments' do
    expect { can_two_movies_fill_flight?([2, 4], 1, 2) }.to raise_error(ArgumentError)
  end

  context 'movie_lengths = [2, 4], flight_time = 1 ' do
    it 'should return false' do
      expect(can_two_movies_fill_flight?([2, 4], 1)).to eq(false)
    end
  end

  context 'Movie lengths [2, 4], flight time: 6' do
    it 'should return true' do
      expect(can_two_movies_fill_flight?([2, 4], 6)).to eq(true)
    end
  end

  context 'Movie lengths [6, 1], flight time: 12' do
    it 'should return false and not check the same number twice' do
      expect(can_two_movies_fill_flight?([6, 1], 12)).to eq(false)
    end
  end
end
