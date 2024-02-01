# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)

  max_len = [word1.size, word2.size].max
  merged_string = ''

  (0...max_len).each do |i|
    merged_string += word1[i] if word1.size > i
    merged_string += word2[i] if word2.size > i
  end

  return merged_string
end
