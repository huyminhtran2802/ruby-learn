=begin
Prompt: Given the head of a singly linked list, return true if it is a palindrome.
Constraint: 
The number of nodes in the list is in the range [1, 105].
0 <= Node.val <= 9
=end

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
    stack = []
    current = head
    while current do
        stack.append(current.val)
        current = current.next
    end
    
    current = head
    while current do
        return false if current.val != stack.pop
        current = current.next
    end
    
    return true
end