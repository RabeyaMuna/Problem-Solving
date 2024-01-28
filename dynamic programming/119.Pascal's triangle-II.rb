# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)

  pascal_arr = []

  (row_index+1).times do |i|
    pascal_arr.push Array.new(i+1, 0)
    pascal_arr[i][0] = 1
  end

  (1..row_index).each do |j|
    (1..j).each do |k|
      pascal_arr[j][k] = pascal_arr[j-1][k-1].to_i + pascal_arr[j-1][k].to_i
    end
  end

  return pascal_arr[row_index]
end
