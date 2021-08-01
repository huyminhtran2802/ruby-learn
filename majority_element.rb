=begin
Prompt:
Given an array nums of size n, return the majority element.

The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.
Constraint:
n == nums.length
1 <= n <= 5 * 10**4
-2**31 <= nums[i] <= 2**31 - 1
=end

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    count = Hash.new(0)
    nums.each { |num| 
        count[num] += 1
    }
    
    count.each { |k,v|
        return k if v > Integer(nums.length / 2)
    }
    return 0
end