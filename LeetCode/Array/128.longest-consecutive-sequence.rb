# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
  return 0 if nums.empty?

  nums = nums.sort
  max_num = 1
  count = 1

  nums = nums.sort.uniq

  (1...nums.size).each do |i|
    if nums[i] - nums[i-1] == 1
      count += 1
    else
      max_num= [count, max_num].max
      count = 1
    end
  end

  return [count, max_num].max
end
