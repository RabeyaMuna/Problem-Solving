class Stack
  def initialize
    @items = []
  end

  def push(item)
    @items.push(item)
  end

  def pop
    @items.pop
  end

  def peek
    @items.last
  end

  def empty?
    @items.empty?
  end

  def size
    @items.size
  end
end

# Example usage:
stack = Stack.new

stack.push(1)
stack.push(2)
stack.push(3)

puts "Top of the stack: #{stack.peek}" # Output: 3

popped_item = stack.pop
puts "Popped item: #{popped_item}" # Output: 3

puts "Stack size after pop: #{stack.size}" # Output: 2
