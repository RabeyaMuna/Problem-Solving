class MyStack
  attr_accessor :queue

    def initialize()
      @queue = []
    end


=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
      @queue << x
    end


=begin
    :rtype: Integer
=end
    def pop()
      temp = []

      (@queue.size-1).times do
        temp.push(@queue.shift)
      end

      ans = @queue.shift

      @queue = temp

      return ans
    end


=begin
    :rtype: Integer
=end
    def top()
      @queue[-1]
    end


=begin
    :rtype: Boolean
=end
    def empty()
      return @queue.empty?
    end
end

# Your MyStack object will be instantiated and called as such:
# obj = MyStack.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.top()
# param_4 = obj.empty()
