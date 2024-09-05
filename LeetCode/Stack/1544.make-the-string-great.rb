# @param {String} s
# @return {String}
def make_good(s)
  return s if s.size == 1

  good_string = []

  good_string << s[0]

  (1...s.size).each do |i|
   if good_string[-1] && (good_string[-1].swapcase == s[i])
      good_string.pop
   else 
     good_string << s[i]
    end
  end

  return good_string.join
end
