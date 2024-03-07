# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  left = 0
  right = nums.size - 1
  
  two_d_array = nums.map.with_index { |num, index| [num, index] }
  sorted_two_d_array = two_d_array.sort_by { |nums| nums[0] }

  while left < right
    two_sum = sorted_two_d_array[left].first + sorted_two_d_array[right].first

    if two_sum == target
      return [sorted_two_d_array[left].last, sorted_two_d_array[right].last]
    elsif two_sum > target
      right = right - 1
    else 
      left = left + 1
    end
  end
end
