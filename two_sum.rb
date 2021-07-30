=begin
Prompt:
Given an array of integers nums and an integer target,
return indices of the two numbers such that they add up to target.
You may assume that each input would have exactly one solution,
and you may not use the same element twice.
You can return the answer in any order.

Constraint:
2 <= nums.length <= 104
-109 <= nums[i] <= 109
-109 <= target <= 109
Only one valid answer exists.

=end
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    container = Hash.new(0)
    nums.each_with_index { |val, i| 
        complement = target-val
        if container.include?(complement)
            return [i, container[complement]]
        else
            container[val] = i
        end
    }
end