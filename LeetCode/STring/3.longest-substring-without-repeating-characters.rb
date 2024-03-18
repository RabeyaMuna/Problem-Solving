# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  max_len = 0
  i = 0
  used = {}
  length= 0

  while i < s.size
    if used.has_key? s[i]
      length = 0
      i = used[s[i]] + 1
      used = {}
    else 
      length += 1
      used[s[i]] = i
      i += 1
    end

    max_len = [max_len, length].max
  end

  return max_len
end
