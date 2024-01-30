# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  carry = 0
  new_num = ''

  max_len = [a.size, b.size].max
  a = a.reverse
  b = b.reverse

  max_len.times do |i|
    digitA = if i < a.size
                a[i] 
             else 
               0
            end
    digitB = if i < b.size
                b[i] 
             else 
               0
            end

    sum_num = (digitA.to_i + digitB.to_i) + carry
    new_num += (sum_num % 2).to_s
    carry = (sum_num.div(2))
  end

  new_num += carry.to_s if carry > 0

  return new_num.reverse
end
