# @param {Integer[]} nums
# @return {Integer}
def jump(nums)

  return 0 if nums.size == 1

  jumps = 0
  coverage = 0
  current = 0
  destination = nums.size - 1

  nums.each_with_index do |n, i|
    coverage = [coverage, i + nums[i]].max

    if i == current
      current = coverage
      jumps = jumps + 1

      if coverage >= destination
         break; 
       end
    end
  end
    
  return jumps
end
