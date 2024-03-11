# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)

  answer = []
  len = nums.size - 1
  left_prod = 1
  right_prod = 1
  left = []
  right = []
  left[0] = 1
  right[len] = 1

  (1..len).each do |i|
    left_prod = left_prod * nums[i - 1]
    left[i] = left_prod
    right_prod = right_prod * nums[len - i + 1]
    right[len - i] = right_prod
  end
 
  (0..len).each do |i|
    answer[i] = left[i] * right[i]
  end
  
  return answer
end
