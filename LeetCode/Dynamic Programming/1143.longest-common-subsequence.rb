# @param {String} text1
# @param {String} text2
# @return {Integer}
def longest_common_subsequence(text1, text2)
  return 0 if text1.size == 0 || text2.size == 0
  dp = Array.new(text1.size + 1){ Array.new(text2.size + 1) }

  (0..text1.size).each do |i|
    (0..text2.size).each do |j|
      
      if i == 0 || j == 0
       dp[i][j] = 0
      elsif text1[i -1] == text2[j - 1]
        dp[i][j] = 1 + dp[i - 1][j - 1]
      else
        dp[i][j] = [dp[i][j-1], dp[i-1][j]].max
      end 
    end
  end

   return dp[text1.size][text2.size]
end
