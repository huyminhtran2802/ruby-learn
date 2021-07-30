=begin
Prompt
Given an integer x, return true if x is palindrome integer.
An integer is a palindrome when it reads the same backward as forward.
For example, 121 is palindrome while 123 is not.

Constraint
-2**31 <= x <= 2**31 - 1

=end

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    return false if x < 0
    
    real_num = x
    x = x.abs
    rev = 0
    while x != 0 do
        num = Integer(x % 10)
        x = Integer(x / 10)
        rev = rev * 10 + num
    end
    return rev == real_num
end