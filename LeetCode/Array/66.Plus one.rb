# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)

  result_number =  digits.join.to_i + 1

  converted_array = result_number.to_s.chars.map(&:to_i)

  return converted_array
end
