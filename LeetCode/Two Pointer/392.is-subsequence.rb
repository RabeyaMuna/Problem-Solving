# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
    sorted_s = s.chars.sort.join
    sorted_t = t.chars.sort.join

    (0...s.size).each do |i|
      if sorted_s[i] != sorted_t[i]
        return false
      end
    end

    return true
end
