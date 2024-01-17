# @param {String} s
# @return {String}
def longest_palindrome(s)
  if s.size <= 1
    return s
  end

  max_substring_len = 0
  start = 0
  right = s.size
  left = 0

  while left < right
    odd_size = expand_from_pointer(s, left, left)
    even_size = expand_from_pointer(s, left, left + 1)

    substring_len = [odd_size, even_size].max

    if substring_len > max_substring_len
      max_substring_len = substring_len
      start = left - (max_substring_len - 1) / 2
    end

    left += 1
  end

  return s[start, max_substring_len]
end

def expand_from_pointer(s, left, right)
  while left >= 0 && right < s.size && s[left] == s[right]
    left -= 1
    right += 1
  end

  return right - left - 1
end
