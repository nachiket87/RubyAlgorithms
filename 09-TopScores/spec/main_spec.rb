# frozen_string_literal: true

require './spec_helper'
require '../main'

describe 'sort_scores method' do
  it 'should return an array' do
    expect(sorted_scores([37, 89, 41, 65, 91, 53], 100).class).to eq(Array)
  end

  it 'should accept two arguments' do
    expect { sorted_scores(1, 2, 3) }.to raise_error(ArgumentError)
  end

  it 'should return the right answer for an unsorted array' do
    expect(sorted_scores([37, 89, 41, 65, 91, 53], 100)).to eq([91, 89, 65, 53, 41, 37])
  end

  it 'should return empty array for empty scores' do
    expect(sorted_scores([], 100)).to eq([])
  end

  it 'should return sorted array for 2 scores' do
    expect(sorted_scores([30, 60], 100)).to eq([60, 30])
  end

  it 'should return single score for single input' do
    expect(sorted_scores([55], 100)).to eq([55])
  end

  it 'should return the right answer for multiple same scores' do
    expect(sorted_scores([20, 10, 30, 30, 10, 20], 100)).to eq([30, 30, 20, 20, 10, 10])
  end
end
