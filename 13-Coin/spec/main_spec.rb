# frozen_string_literal: true

require './spec_helper'
require '../main'

describe 'number of types of change that can be given' do

  it 'should return 4' do
    expect(change_possibilities_bottom_up(4,[1,2,3])).to eq(4)
  end
end
