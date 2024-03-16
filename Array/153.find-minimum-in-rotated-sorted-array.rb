# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
 left = 1
 right = nums.size - 1
 min_num = nums[0]

 while left <= right  
   min_num = [min_num, nums[right], nums[left]].min
   left += 1
   right -= 1
 end
    return min_num
end
