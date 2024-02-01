# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
  new_arr = []
  max_num = candies.max

  candies.each do |candy|
    if (candy + extra_candies)  >= max_num
      new_arr << true
    else 
      new_arr << false
    end
  end

  return new_arr
    
end
