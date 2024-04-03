# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
def insert(intervals, new_interval)
  result = []

  intervals = (intervals.push(new_interval)).sort

  result.push(intervals[0])

  (1...intervals.size).each do |i|
    if result[-1][1] >= intervals[i][0]
      result[-1][0] = [result[-1][0], intervals[i][0]].min
      result[-1][1] = [result[-1][1], intervals[i][1]].max
    else 
      result.push(intervals[i])
    end
  end

  return result
end
