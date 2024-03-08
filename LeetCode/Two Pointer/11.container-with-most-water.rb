# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  left = 0
  right = height.size - 1
  max_area = 0

  while left < right
    min_height = [height[left], height[right]].min
    width = right - left
    area = min_height * width
    max_area = [max_area, area].max

    if height[left] < height[right]
      left += 1
    elsif  height[left] > height[right]
      right -= 1
    else 
      left += 1
      right -= 1
    end
  end

  return max_area
end
