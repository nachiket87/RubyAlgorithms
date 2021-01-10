# frozen_string_literal: true

require './spec_helper'
require '../main'

describe 'Does the LinkedList have a cycle?' do
  it 'should return false for list thats not a cycle' do
    fourth = LinkedListNode.new(4)
    third = LinkedListNode.new(3, fourth)
    second = LinkedListNode.new(2, third)
    first = LinkedListNode.new(1, second)
    expect(contains_cycle?(first)).to be false
  end

  it 'should be true for cycle loops at third' do
    fifth = LinkedListNode.new(5)
    fourth = LinkedListNode.new(4, fifth)
    third = LinkedListNode.new(3, fourth)
    second = LinkedListNode.new(2, third)
    first = LinkedListNode.new(1, second)
    fifth.next = third
    expect(contains_cycle?(first)).to be true
  end

  it 'Should be true for cycle that loops at end' do
    fifth = LinkedListNode.new(5)
    fourth = LinkedListNode.new(4, fifth)
    third = LinkedListNode.new(3, fourth)
    second = LinkedListNode.new(2, third)
    first = LinkedListNode.new(1, second)
    fifth.next = fourth
    expect(contains_cycle?(first)).to be true
  end

  it 'should be false for empty list' do
    expect(contains_cycle?(nil)).to be false
  end
end
