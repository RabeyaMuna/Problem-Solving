# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
  ans = []
  (0..n).each do|i|
    binary_count = i.to_s(2).count('1')
    ans.push(binary_count)
  end
    
  return ans
end
