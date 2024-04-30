# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
  array_2d = Array.new(m) { Array.new(n) }

  m.times do |i|
    n.times do |j|
      if i == 0 || j == 0
        array_2d[i][j] = 1
      else 
        array_2d[i][j] = array_2d[i-1][j] + array_2d[i][j-1]
      end
    end
  end

  return array_2d[m-1][n-1]
end
