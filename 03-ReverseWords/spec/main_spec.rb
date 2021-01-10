# frozen_string_literal: true

require './spec_helper'
require '../main'

describe 'reverse_words' do
  it 'return a string' do
    expect(reverse_words!('string').class).to eq(String)
  end

  it 'return a reversed string' do
    message = 'cake pound steal'
    expected = 'steal pound cake'
    expect(reverse_words!(message)).to eq(expected)
  end

  it 'return a reversed string test case 2' do
    expect(reverse_words!('nachiket is a good programmer')).to eq('programmer good a is nachiket')
  end

  it 'return a reversed string test case 2' do
    expect(reverse_words!('i am a javascript developer')).to eq('developer javascript a am i')
  end
end
