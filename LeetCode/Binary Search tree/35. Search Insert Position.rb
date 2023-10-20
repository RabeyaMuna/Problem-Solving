# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)

  left = 0
  right = nums.size - 1
  
  while left <= right
    mid = (left + right) / 2

    if nums[mid] == target
      return mid
    elsif nums[left] == target
      return left
    elsif nums[right] == target
      return right
    elsif mid > 0 && nums[mid - 1] == target
      return mid - 1 
    elsif  mid < right && nums[mid + 1] == target
       return mid + 1
    elsif nums[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end

  return left
end
