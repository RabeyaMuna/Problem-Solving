# @param {String} s
# @return {String}
def reverse_words(s)
  convert_to_words = s.split.reverse

  return convert_to_words.join(' ')
end
