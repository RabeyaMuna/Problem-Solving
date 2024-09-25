# @param {Integer[]} nums
# @return {Integer}
def longest_subarray(nums)
    current = 0
    previous = 0
    ans = 0

    nums.each do |n|
      if n == 1
        current += 1
      else 
        ans = [ans, previous+current].max
        previous = current
        current = 0
      end
    end

    ans = [ans, previous+current].max

    if ans == nums.size 
      return ans - 1
    else 
      return ans
    end
end
