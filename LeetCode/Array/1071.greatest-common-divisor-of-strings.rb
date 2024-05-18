# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
  return "" if str1+str2 != str2+str1

  if str1.size >= str2.size
    str1[0...str1.size.gcd(str2.size)]
  else 
    str2[0...str2.size.gcd(str1.size)]
  end
end
