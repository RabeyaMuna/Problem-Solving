# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  new_hash = Hash.new(0) 

  nums.each{|num| new_hash[num] += 1}

  sorted_hash = new_hash.sort_by { |key, value| -value }.to_h

  return sorted_hash.keys.take(k)
end
