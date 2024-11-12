# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
   return [] if digits.nil? || digits.empty?

    number_to_char = {
        '2' => ['a', 'b', 'c'],
        '3' => ['d', 'e', 'f'],
        '4' => ['g', 'h', 'i'],
        '5' => ['j', 'k', 'l'],
        '6' => ['m', 'n', 'o'],
        '7' => ['p', 'q', 'r', 's'],
        '8' => ['t', 'u', 'v'],
        '9' => ['w', 'x', 'y', 'z']
        }

    return number_to_char[digits] if digits.size == 1

    chars = digits.chars.map { |digit| number_to_char[digit] }

    return chars.shift.product(*chars).map(&:join)
    
end
