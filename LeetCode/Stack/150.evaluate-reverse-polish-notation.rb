# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
  stack = []
  result = 0

  tokens.each do |ele|
    if ele == "+"
       first = stack.pop
       second = stack.pop

       stack << (first + second)
    elsif ele == "*"
      first = stack.pop
      second = stack.pop

      stack << (first * second)
    elsif ele == "/"
      first = stack.pop
      second = stack.pop

      stack << (second.to_f / first.to_f).to_i
    elsif ele == "-"
      first = stack.pop
      second = stack.pop

      stack << (second - first)
    else 
      stack << ele.to_i
    end
  end

  return stack.pop
end
