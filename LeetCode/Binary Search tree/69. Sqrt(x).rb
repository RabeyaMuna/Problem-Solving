# @param {Integer} x
# @return {Integer}
def my_sqrt(x)

  left = 0
  right = x

  while left <= right
    mid = left + (right - left) / 2

    if mid * mid == x 
      return mid
    elsif (mid * mid) < x
      left = mid + 1
    elsif (mid * mid) > x
      right = mid - 1
    end
  end

  return right

end
