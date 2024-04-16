# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  sub_seq = ''
  s_index = 0

  (0...t.size).each do |index|
    if s[s_index] == t[index]
      sub_seq += t[index]
      s_index += 1
    end
  end

  return sub_seq == s
end
