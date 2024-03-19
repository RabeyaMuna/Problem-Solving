# I have initated hash
# Add two pointers to point from same index
#I have used the window slicing concept 


# @param {String} s
# @param {Integer} k
# @return {Integer}

def character_replacement(s, k)
  hash_table = Hash.new(0)
  left = 0
  right = 0
  longest_rep = 0

  while right < s.size
    hash_table[s[right]] += 1

    while (right- left + 1) - hash_table.values.max  > k
      hash_table[s[left]] -= 1
      left += 1
    end

    longest_rep = [longest_rep, right - left + 1].max
    right += 1
  end
   
   return longest_rep
end

