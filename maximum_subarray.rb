=begin
Prompt:
Given an integer array nums, find the contiguous subarray (containing at least one number)
which has the largest sum and return its sum.
A subarray is a contiguous part of an array.
Constraint:
1 <= nums.length <= 3 * 10**4
-10**5 <= nums[i] <= 10**5
=end

# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    max_num = nums[0]
    temp = nums[0]
    
    for i in 1...nums.length do
        temp = [nums[i], temp+nums[i]].max
        max_num = [max_num, temp].max
    end
    return max_num
end