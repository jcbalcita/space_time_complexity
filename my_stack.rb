class MyStack
  def initalize
    @store = []
  end

  def pop
    @store.pop
  end

  def push(num)
    @store.push(num)
  end

  def peek
    @store.last
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end

end
