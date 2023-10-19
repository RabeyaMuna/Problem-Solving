# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
   left = 0
   right = nums.size - 1

   while left <= right
        mid = (right + left) / 2 

        if nums[left] == target 
          return left
        elsif nums[right] == target 
          return right
        elsif nums[mid] == target
          return mid
        elsif mid > 0 && nums[mid - 1] == target
          return mid -1 
        elsif mid < right && nums[mid + 1] == target
          return mid + 1
        elsif nums[left] <= nums[mid]
            if nums[mid] > target &&  nums[left] <=target
                right = mid - 1
            else 
              left = mid + 1
            end
        else 
            if nums[mid] < target && nums[right] >= target
                left = mid + 1
            else 
                right = mid -1
            end
        end
    end
    return -1
end
