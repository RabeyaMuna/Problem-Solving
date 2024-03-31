# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
  return intervals if intervals.size <= 1

  intervals = intervals.sort_by { |interval| interval[0] }

  merged_interval = []

  merged_interval.push(intervals[0])

  (1...intervals.size).each do |i|
    if merged_interval[-1][1] >= intervals[i][0]
       merged_interval[-1][1] =  [merged_interval[-1][1], intervals[i][1]].max
    else
      merged_interval.push(intervals[i])
    end
  end
    
  return merged_interval
end
