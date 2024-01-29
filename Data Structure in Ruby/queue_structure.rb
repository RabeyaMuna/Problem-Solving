class Queue
  def initialize
    @items = []      
  end

  def enqueue(item)
    @items.push(item)
  end

  def dequeue
    @items.shift
  end

  def front
    @items.first
  end

  def size
    @items.size
  end
end

queue = Queue.new

elements_to_enqueue = [1, 2, 3, 4]

elements_to_enqueue.each { |element| queue.enqueue(element) }

queue.dequeue
