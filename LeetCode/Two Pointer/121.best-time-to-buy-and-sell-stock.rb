# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  left = 0
  right = left + 1
  profit_price = 0

  while right < prices.size
    if prices[left] < prices[right]
      profit_price = [profit_price, prices[right] - prices[left]].max
    else 
      left = right
    end
    
    right += 1
  end
  
  return profit_price
end
