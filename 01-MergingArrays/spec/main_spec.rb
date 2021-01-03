# frozen_string_literal: true

require './spec_helper'
require '../main'

describe 'merge_meetings' do
  it 'should return an array' do
    expect(merge_meetings([1, 2, 3]).class).to eq(Array)
  end

  it 'should accept only one argument' do
    expect { merge_meetings([1, 2, 3], 1) }.to raise_error(ArgumentError)
  end

  it 'merges times accurately' do
    expect(merge_meetings([[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]])).to eq([[0, 1], [3, 8], [9, 12]])
  end
  it 'merges times accurately again' do
    expect(merge_meetings([[1, 3], [2, 4]])).to eq([[1, 4]])
  end
end
