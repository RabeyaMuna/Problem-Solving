# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)

  answer = []
  left = []
  right = []
  len = nums.size - 1

  left[0] = 1
  right[len] = 1

  (1..len).each do |n|
    left[n] = nums[n-1] * left[n-1]
    right[len - n] = nums[len - n + 1] * right [len-n+1]
  end
 
  (0..len).each do |i|
    answer[i] = left[i] * right[i]
  end
  
  return answer
end
