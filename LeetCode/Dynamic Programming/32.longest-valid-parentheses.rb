# @param {String} s
# @return {Integer}
def longest_valid_parentheses(s)
  max_count = 0
  index_stack = [-1]

  s.length.times do |i|
    top = index_stack.last
    if top != -1 && s[top] == '(' && s[i] == ')'
      index_stack.pop
      max_count = [max_count, i - index_stack.last].max
    else 
      index_stack << i
    end
  end

  return max_count
end
