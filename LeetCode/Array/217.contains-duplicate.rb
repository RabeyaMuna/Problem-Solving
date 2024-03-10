# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    nums = nums.sort

    i = 1

    while i < nums.size
      if nums[i - 1] == nums[i]
        return true
      end

      i += 1
    end

    return false
end
