# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)

  left = 0
  right = 1
  max_profit = 0

  while right  <  prices.length
    if prices[left] < prices[right]
      profit = prices[right] - prices[left]
      max_profit = [max_profit, profit].max
    else
      left = right
    end
     right += 1
  end

  return max_profit
end
