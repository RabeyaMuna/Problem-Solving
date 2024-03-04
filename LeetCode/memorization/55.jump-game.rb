# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums) 
  rechable_index = 0

  nums.size.times do |i| 
    if rechable_index < i
      return false
    end

    rechable_index = [rechable_index, i + nums[i]].max
  end

  return true
end
