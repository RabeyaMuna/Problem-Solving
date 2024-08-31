# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def longest_ones(nums, k)
  start = 0
  max_size = 0
  fillped_zero = 0

  (0...nums.size).each do |last|
    if nums[last] == 0
      fillped_zero += 1
    end

    while k < fillped_zero
      fillped_zero -= 1 if nums[start] == 0
      start += 1
    end

   max_size = [max_size, last - start + 1].max

  end
    
  return max_size
end
