# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
def coin_change(coins, amount)
  return 0 if amount == 0
  coins = coins.sort

  return -1 if coins.first > amount

  coins.pop while coins.last > amount

  dp =  Array.new(amount + 1, Float::INFINITY)
  dp[0] = 0

  (1..amount).each do |amount|
    coins.each do |coin|
      break if coin > amount
      diff = amount - coin
      dp[amount] = [dp[amount], dp[diff] + 1].min
    end
  end

  dp[amount] == Float::INFINITY ? -1 : dp[amount]
end
