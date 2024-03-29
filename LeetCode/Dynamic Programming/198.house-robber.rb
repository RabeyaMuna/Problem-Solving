# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return nums[0] if nums.size == 1
  return [nums[0], nums[1]].max if nums.size == 2

  dp = Array.new(nums.size, 0)

  dp[0] = nums[0]
  dp[1] = [nums[0], nums[1]].max

  (2...nums.size).each do |i|
    dp[i] = [nums[i] + dp[i-2], dp[i-1]].max
  end

  return dp[nums.size - 1]
end
