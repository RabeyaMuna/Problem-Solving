# @param {Integer[]} nums
# @return {Boolean}
def increasing_triplet(nums)

  left_num = Float::INFINITY
  mid_num = Float::INFINITY

  (0...nums.size).each do |i|
    if nums[i] <= left_num
      left_num = nums[i]
    elsif nums[i] <= mid_num 
      mid_num = nums[i]
    else
      return true
    end
  end
    
  return false
end
