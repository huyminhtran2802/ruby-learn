=begin
Prompt:
Given a string s consists of some words separated by spaces,
return the length of the last word in the string. If the last word does not exist, return 0.
A word is a maximal substring consisting of non-space characters only.
Constraint:
1 <= s.length <= 10**4
s consists of only English letters and spaces ' '.
=end

# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    s.strip!
    return 0 if s.nil?
    tokens = s.split(" ")
    return 0 if tokens.length == 0
    return tokens[-1].length
end