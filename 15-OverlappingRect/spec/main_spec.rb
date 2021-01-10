# frozen_string_literal: true

require './spec_helper'

require '../main'

describe 'Is the rectangle overlapping' do
  it 'should overlap along both axes' do
    rect1 = {
      left_x: 1,
      bottom_y: 1,
      width: 6,
      height: 3
    }
    rect2 = {
      left_x: 5,
      bottom_y: 2,
      width: 3,
      height: 6
    }
    expected = {
      left_x: 5,
      bottom_y: 2,
      width: 2,
      height: 2
    }

    expect(find_rectangular_overlap(rect1, rect2)).to eq(expected)
  end

  it 'one rectangle inside another' do
    rect1 = {
      left_x: 1,
      bottom_y: 1,
      width: 6,
      height: 6
    }
    rect2 = {
      left_x: 3,
      bottom_y: 3,
      width: 2,
      height: 2
    }
    expected = {
      left_x: 3,
      bottom_y: 3,
      width: 2,
      height: 2
    }
    expect(find_rectangular_overlap(rect1, rect2)).to eq(expected)
  end

  it 'both rectangles the same' do
    rect1 = {
      left_x: 2,
      bottom_y: 2,
      width: 4,
      height: 4
    }
    rect2 = {
      left_x: 2,
      bottom_y: 2,
      width: 4,
      height: 4
    }
    expected = {
      left_x: 2,
      bottom_y: 2,
      width: 4,
      height: 4
    }
    expect(find_rectangular_overlap(rect1, rect2)).to eq(expected)
  end
end
