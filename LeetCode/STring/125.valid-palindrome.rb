# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    sentence = ''

    s.downcase.each_char do |char|
      if ('a'..'z').include?(char) || ('0'..'9').include?(char)
        sentence += char
      end
    end
    
    left = 0
    right = sentence.size - 1

    while left < right
      if sentence[left] != sentence[right]
        return false
      end
      left += 1
      right -= 1
    end

    return true
end
