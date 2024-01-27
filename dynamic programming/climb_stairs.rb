# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    return n if n <= 3

    dp = Array.new(n+1, 0)
    dp[1] = 1
    dp[2] = 2
    dp[3] = 3

    (4..n).each do |i|
      dp[i] = dp[i - 1] + dp[i - 2]
    end
 
    return dp[n]
    # return climb_stairs(n-1) + climb_stairs(n-2)

end
