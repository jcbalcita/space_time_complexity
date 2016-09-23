class MyQueue

  def initialize
    @store = []
    @max = nil
    @min = nil
  end

  def enqueue(num)
    @store.push(num)

    @max = num if num > @max
    @min = num if num < @min
  end

  def dequeue
    @store.shift
  end

  def max
    @max
  end

  def min
    @min
  end

  def peek
    @store[0]
  end

  def size
    @store.size
  end

  def empty?
    return true if @store.length == 0
    false
  end
end
