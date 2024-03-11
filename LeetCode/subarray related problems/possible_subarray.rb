
def generate_all_possible_sub_array(arr, numbers, start, _end)
  if start == numbers.size && _end == numbers.size
    return arr
  elsif _end == numbers.size 
    generate_all_possible_sub_array(arr, numbers, start+1, start+1)
  else
    sub_arr = []
    i = start
    while i <= _end
      sub_arr.push(numbers[i])
      i += 1
    end
    arr.push(sub_arr)
    generate_all_possible_sub_array(arr, numbers, start, _end + 1)
  end
end

numbers = [1, 2, 3, 4, 5]
arr = []
sub_array = generate_all_possible_sub_array(arr, numbers, 0, 0)

# Display the array
puts "Array of integers: #{sub_array}"

===============

# All possible subarray: [[1], [1, 2], [1, 2, 3], [1, 2, 3, 4], [1, 2, 3, 4, 5], [2], [2, 3], [2, 3, 4], [2, 3, 4, 5], [3], [3, 4], [3, 4, 5], [4], [4, 5], [5]]
