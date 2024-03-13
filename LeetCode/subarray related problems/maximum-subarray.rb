
# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
 current_max = nums[0]
 max_sum = nums[0]

 (1...nums.size).each do |i|
   current_max = [nums[i], current_max + nums[i]].max
   max_sum = [max_sum, current_max].max
 end

 return max_sum
end
