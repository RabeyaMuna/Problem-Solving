# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def max_operations(nums, k)
    i = 0
    j = nums.size - 1

    nums = nums.sort

    counter = 0

    while i < j
      sum = (nums[i] + nums[j])
      if sum == k
        counter += 1
        i += 1
        j -= 1
      elsif nums[i] + nums[j] < k
        i += 1
      else 
        j -= 1
      end
    end

    return counter
end
