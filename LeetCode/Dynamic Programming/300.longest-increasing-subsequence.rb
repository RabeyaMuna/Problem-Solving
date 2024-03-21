# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
  dp = Array.new(nums.size, 1)
  
  (1...nums.size).each do |i|
    (0...i).each do |j|
      if nums[i] > nums[j]
         if dp[j] + 1 > dp[i]
           dp[i] += 1
        end
      end
    end
  end

  return dp.max
end
