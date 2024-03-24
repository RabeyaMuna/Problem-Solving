# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  hash_table = Hash.new(0)

  nums.each do |num|
    hash_table[num] += 1
    return num if hash_table[num] > 1
  end
  
  return 0
end
