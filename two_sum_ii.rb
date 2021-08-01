=begin
Prompt:
Given an array of integers numbers that is already sorted in non-decreasing order, find two numbers such that they add up to a specific target number.
Return the indices of the two numbers (1-indexed) as an integer array answer of size 2, where 1 <= answer[0] < answer[1] <= numbers.length.
Constraint:
2 <= numbers.length <= 3 * 10**4
-1000 <= numbers[i] <= 1000
numbers is sorted in non-decreasing order.
-1000 <= target <= 1000
The tests are generated such that there is exactly one solution.
=end

# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    j = numbers.length - 1
    i = 0
    
    while i < numbers.length && j >= 0 do
        sum = numbers[i] + numbers[j]
        return [i+1,j+1] if sum == target
        if sum < target
            i += 1
        else
            j -= 1
        end
    end
    
end