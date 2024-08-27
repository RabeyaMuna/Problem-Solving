# @param {String} s
# @param {Integer} k
# @return {Integer}
def max_vowels(s, k)
  vowels = ['a', 'e', 'i', 'o', 'u']
  max_vowel = 0
  count = 0

  # Calculate vowel count in the first window of size k
  (0...k).each do |i|
    count += 1 if vowels.include?(s[i])
    break if count == k
  end

  max_vowel = count

  # Slide the window across the string
  (k...s.size).each do |i|
    count -= 1 if vowels.include?(s[i-k])
    count += 1 if vowels.include?(s[i])

    max_vowel = [max_vowel, count].max

    # If we've found the maximum possible number of vowels, break
    break if max_vowel == k
  end

  max_vowel
end
