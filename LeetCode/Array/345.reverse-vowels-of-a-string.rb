# @param {String} s
# @return {String}
def reverse_vowels(s)

  right = s.size
  left = 0
  vowels = ['a', 'e', 'i', 'o', 'u']

  while left < right
    if vowels.include?(s[left]&.downcase) && vowels.include?(s[right]&.downcase)
        temp = s[left]
        s[left] = s[right]
        s[right] = temp
        left += 1
        right -= 1
    elsif vowels.include?(s[left]&.downcase) && !vowels.include?(s[right]&.downcase)
        right -= 1
    elsif vowels.include?(s[right]&.downcase) && !vowels.include?(s[left]&.downcase)
        left += 1
    else
        left += 1
        right -= 1
    end
  end

  return s
end
