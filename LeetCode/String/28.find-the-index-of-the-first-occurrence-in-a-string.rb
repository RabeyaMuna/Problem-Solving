# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  len1 = haystack.size
  len2 = needle.size

  return -1 if len1< len2

  index = 0

  while index <= len1
    return index if haystack[index, len2] == needle

    index += 1
  end

  return -1
end
