# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  return [strs] if strs.size == 1 || strs.size == 1

   hash = Hash.new { |h,k| h[k] = [] }

  strs.each do |str|
    str_sorted_key = str.chars.sort.join
    hash[str_sorted_key] << str
  end
    
    return hash.values
end
