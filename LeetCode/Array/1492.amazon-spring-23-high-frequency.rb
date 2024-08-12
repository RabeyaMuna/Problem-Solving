# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def kth_factor(n, k)
    ascending_order = []

    (1..n).each do |i|
      if n % i == 0
        ascending_order.push(i)
      end
    end

    if ascending_order.size < k
       return -1
    else 
      return ascending_order[k-1]
    end
end
