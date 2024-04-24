# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
  return cost.min if 2 >= cost.size
  
  (2...cost.size).each do |i|
    cost[i] = [cost[i-1],cost[i-2]].min + cost[i]
  end
    
  return [cost[-1], cost[-2]].min
end
