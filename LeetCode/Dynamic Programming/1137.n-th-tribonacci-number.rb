# @param {Integer} n
# @return {Integer}
def tribonacci(n)

  tribo = []
  tribo[0] = 0
  tribo[1] = 1
  tribo[2] = 1

  (3..n).each do |i|
    tribo[i] = tribo[i-1] + tribo[i-2] + tribo[i-3]
  end

  return tribo[n]
end
