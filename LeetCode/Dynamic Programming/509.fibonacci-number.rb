# @param {Integer} n
# @return {Integer}
def fib(n)
  array = [0,1]
  
  (2..n).each do |i|
    array[i] = array[i-1] + array[i-2]
  end

  
  return array[n]
end
