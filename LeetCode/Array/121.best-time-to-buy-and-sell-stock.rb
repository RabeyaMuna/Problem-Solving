# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  profit = 0
  min = prices[0]

  prices.each do |price|
    min = [min, price].min
    profit = [profit, price - min].max
  end

  return profit
end
