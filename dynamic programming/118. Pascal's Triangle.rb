# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  pascal_array = []

  num_rows.times do |i|
    pascal_array.push Array.new(i, 0)
    pascal_array[i][0] = 1
  end

  (1...num_rows).each do |j|
    (1..j).each do |k|
       pascal_array[j][k] = pascal_array[j-1][k-1].to_i + pascal_array[j-1][k].to_i
    end
  end

  return pascal_array
end
