# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
  max_product = nums[0]
  current_product = 1

  left_current_product = 1
  right_current_product = 1

  (0...nums.size).each do |i|
    left_current_product *= nums[i]
    right_current_product *= nums[nums.size - 1 - i]

    current_product = [left_current_product, right_current_product].max
    max_product = [max_product, current_product].max

    if left_current_product == 0
      left_current_product = 1
    end
    if right_current_product == 0
      right_current_product = 1
    end
  end

  return max_product
end

