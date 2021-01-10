# frozen_string_literal: true

class QueueTwoStacks
  def initialize
    @in_stack = []
    @out_stack = []
  end

  def enqueue(item)
    @in_stack.push(item)
  end

  def dequeue
    if @out_stack.empty?
      until @in_stack.empty?
        new_item = @in_stack.pop
        @out_stack.push(new_item)
      end
    end

    if @out_stack.empty?
      raise "Can't dequeue empty stack"
    else
      @out_stack.pop
    end
  end
end
