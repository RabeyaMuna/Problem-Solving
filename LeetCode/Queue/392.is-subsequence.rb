# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  return true if s == ""
  char_array = s.chars

  t.chars.each do |char|
    char_array.shift if char_array[0] == char
    return true if char_array.empty?
  end

  return false
end
