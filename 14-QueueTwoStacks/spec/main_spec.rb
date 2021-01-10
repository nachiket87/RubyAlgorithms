# frozen_string_literal: true

require './spec_helper'
require '../main'

describe 'two stacks for enqueue and dequeue' do
  it 'should return last value enqueued' do
    queue = QueueTwoStacks.new
    queue.enqueue(1)
    queue.enqueue(2)
    queue.enqueue(3)
    actual = queue.dequeue
    expect(actual).to eq(1)
  end

  it 'should return runtime error when empty stack' do
    queue = QueueTwoStacks.new
    expect { queue.dequeue }.to raise_error(RuntimeError)
  end
end
