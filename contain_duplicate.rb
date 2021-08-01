=begin
Prompt:
Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
Constraint:
1 <= nums.length <= 10**5
-10**9 <= nums[i] <= 10**9
=end

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    container = Set.new
    nums.each { |num| 
        return true unless container.add?(num)
    }
    return false
end