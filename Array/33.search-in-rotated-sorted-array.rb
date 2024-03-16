# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  left = 0
  right = nums.size - 1

  while left <= right
    mid = (left + right).div(2)

    if nums[left] == target
      return left
      break
    elsif nums[right] == target
      return right
      break
    elsif nums[mid] == target
      return mid
      break
    end

    left += 1
    right -= 1
  end

  return -1
end
