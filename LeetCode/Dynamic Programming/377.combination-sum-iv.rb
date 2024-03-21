# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def combination_sum4(nums, target)
  dp = Array.new(target + 1, 0)
  nums = nums.sort

  dp[0] = 1

  (1..target).each do |i|
    nums.each do |j|
      break if i - j < 0

      dp[i] += dp[i - j]
      puts dp[i]
    end
  end
    return dp[target]
end
