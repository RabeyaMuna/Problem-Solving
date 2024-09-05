class MinStack
    attr_accessor :stack

    def initialize()
      @stack = []
    end


=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
      @stack << val
    end


=begin
    :rtype: Void
=end
    def pop()
      @stack.pop
    end


=begin
    :rtype: Integer
=end
    def top()
      @stack[-1]
    end


=begin
    :rtype: Integer
=end
    def get_min()
      min_value = @stack[0]

      (1...@stack.size).each do |i|
        min_value = [min_value, @stack[i]].min
      end

      return min_value
    end
end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()
