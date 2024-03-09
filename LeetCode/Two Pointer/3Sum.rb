# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  arr = []
  sorted_arr = nums.sort

  nums.each_with_index do |num, left|
    next if left > 0 && sorted_arr[left] == sorted_arr[left - 1]

    mid = left + 1
    right = sorted_arr.size - 1

    while mid < right
      sum = sorted_arr[left] + sorted_arr[mid] + sorted_arr[right]

      if sum == 0
        arr << [sorted_arr[left], sorted_arr[mid], sorted_arr[right]]
        mid += 1
        right -= 1

        mid += 1 while mid < right && sorted_arr[mid] == sorted_arr[mid - 1]
        right -= 1 while mid < right && sorted_arr[right] == sorted_arr[right + 1]
      elsif sum < 0
        mid += 1
      else
        right -= 1
      end
    end
  end

  arr
end
