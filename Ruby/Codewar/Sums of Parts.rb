def parts_sums(ls)
    # your code
  total = ls.sum
  result = []
  ls.each_with_index do |item, index|
    result.push(total) 
    total = total - item
  end
  result.push(0)
  return result
end
