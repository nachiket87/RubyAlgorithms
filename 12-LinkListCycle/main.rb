# frozen_string_literal: true

class LinkedListNode
  attr_accessor :value, :next

  def initialize(value, next_node = nil)
    @value = value
    @next = next_node
  end
end

def contains_cycle?(node)
  first_runner = node
  second_runner = node

  while first_runner && second_runner
    first_runner = first_runner.next.next
    second_runner = second_runner.next

    return true if first_runner == second_runner

  end

  false
end
