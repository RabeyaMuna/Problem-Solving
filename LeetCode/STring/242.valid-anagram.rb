# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    hash_table = Hash.new(0)
    
    return false if s.size != t.size
    (0...s.size).each do |i|
      hash_table[s[i]] += 1 
    end
    
    t.each_char.each do |char|
       if hash_table.has_key? char
         hash_table[char] -= 1
        elsif !hash_table.has_key? char
          return false
        end

        return false if hash_table[char] < 0
    end

  return true
end
