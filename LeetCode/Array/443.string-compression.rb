# @param {Character[]} chars
# @return {Integer}
def compress(chars)
  count = 0
  compressed_array = []
  compressed_string = chars[0]

  chars.each_index do |i|
    count += 1
    if  chars[i+1] != chars[i]
       compressed_string += count.to_s  if count > 1
       compressed_string += chars[i+1] if !chars[i+1].nil?
       count = 0
    end
  end

  compressed_array = compressed_string.chars

  chars.replace(compressed_array)

  compressed_array.length
end
