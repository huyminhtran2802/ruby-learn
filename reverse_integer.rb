=begin
Prompt
Given a signed 32-bit integer x, return x with its digits reversed.
If reversing x causes the value to go outside the signed 32-bit integer range [-2**31, 2**31 - 1],
then return 0

Constraint:
-2**31 <= x <= 2**31 - 1
=end

# @param {Integer} x
# @return {Integer}
def reverse(x)
    ret = 0
    real_num = x
    x = x.abs
    while x != 0 do
        num = Integer(x % 10)
        x = Integer(x / 10)
        ret = ret * 10 + num
    end
    return 0 if ret > 2**31 - 1 || ret < -2**31

    return real_num < 0 ? -ret : ret
end