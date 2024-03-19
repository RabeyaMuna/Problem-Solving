# @param {String} s
# @return {Boolean}
def is_valid(s)
    stack = []

    s.each_char do |char|
      if (stack.last == '(' && char == ')') || (stack.last == '{' && char == '}') || (stack.last == '[' && char == ']')
        stack.pop()
      else 
        stack.push(char)
      end
    end

    if stack.size == 0
      return true
    else 
      return false
    end
end
