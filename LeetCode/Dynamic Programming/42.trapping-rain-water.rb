# @param {Integer[]} height
# @return {Integer}
def trap(height)
    return 0 if height.length < 3

    max_left = 0
    max_right = 0
    left = 0
    right = height.size - 1
    trapped_water = 0

    while left < right
        if height[left] < height[right]
            if height[left] > max_left
                max_left = height[left]
            else
                trapped_water += (max_left - height[left])
            end
            left += 1
        else
            if height[right] > max_right
                max_right = height[right]
            else
                trapped_water += (max_right - height[right])
            end
            right -= 1 
        end
    end

    return trapped_water
end
