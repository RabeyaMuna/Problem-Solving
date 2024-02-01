# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
  if str2.size > str1.size
    return gcd_of_strings(str2, str1)
  end

  if (str1+str2 == str2+str1)

    gcd_len = str1.size.gcd(str2.size)

    return str1[0, gcd_len]
  else 
    return ""
  end
end
