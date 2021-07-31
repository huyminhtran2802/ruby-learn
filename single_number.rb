=begin
Prompt:
Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

You must implement a solution with a linear runtime complexity and use only constant extra space.
Constraint:
1 <= nums.length <= 3 * 10**4
-3 * 10**4 <= nums[i] <= 3 * 10**4
Each element in the array appears twice except for one element which appears only once.
=end
# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    count = Hash.new(0)
    nums.each { |num|
        count[num] += 1
    }
    
    count.each { |k,v|
        return k if v == 1
    }
    return 0
end