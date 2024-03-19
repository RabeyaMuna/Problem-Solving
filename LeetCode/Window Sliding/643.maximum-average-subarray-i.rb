# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
  sum = 0

  (0...k).each do |i|
    sum += nums[i]
  end

  max_sum = sum
  left_index = 0
  right_index = k 

  while right_index < nums.size
    sum = sum - nums[left_index] + nums[right_index]
    right_index += 1
    left_index += 1
    max_sum = [max_sum , sum].max
  end
    
    return max_sum.to_f / k
end
