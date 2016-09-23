require_relative 'my_stack'

class StackQueue

  def initialize
    @store = [MyStack.new(), MyStack.new()]
    @max = nil
    @min = nil
  end

  def enqueue
    @store.enqueue
  end

  def dequeue
    @store.dequeue
  end

  def size
    @store.size
  end

  def empty?
    @store.empty
  end

  def max
    @store.max
  end

end
