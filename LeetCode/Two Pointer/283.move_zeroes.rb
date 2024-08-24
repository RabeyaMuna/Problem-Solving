# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  return nums if nums.size == 1

  count = 0

  (0...nums.size).each do |i|
    if nums[i] != 0
      nums[count] = nums[i]
      count += 1
    end
  end

  (count...nums.size).each do |j|
    nums[j] = 0
  end

  return nums
end
