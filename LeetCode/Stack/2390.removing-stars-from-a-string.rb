# @param {String} s
# @return {String}
def remove_stars(s)
  stack = []

  s.chars.each do |ch|
    if ch == "*"
      stack.pop
    else
      stack.push(ch)
    end
  end

  return stack.join
end
