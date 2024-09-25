# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)

  check_arr = []

  total  = gain[0]

  check_arr.push(0)
  check_arr.push(gain[0])

  (1...gain.size).each do |i|
    total += gain[i]
    check_arr.push(total)
  end

  return check_arr.max
end
