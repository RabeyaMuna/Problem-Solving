# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
  s.match?(/^#{p}$/)
end
