# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  (0...flowerbed.size).each do |i|
    if (flowerbed[i]== 0 && n > 0) && ((i == 0 && flowerbed[i+1] == 0) || (i == flowerbed.size - 1 && flowerbed[i-1] == 0))
       flowerbed[i] = 1
       n -= 1
    elsif (n > 0 && i > 0 && i < (flowerbed.size - 1) && flowerbed[i]== 0) && (flowerbed[i - 1] == 0 && flowerbed[i + 1] == 0)
      flowerbed[i] = 1
      n -= 1
    end

    return true if n==0
  end
  
  return false
end
