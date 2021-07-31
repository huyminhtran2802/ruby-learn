=begin
Prompt:
Given the head of a sorted linked list, delete all duplicates such that each element appears only once. 
Return the linked list sorted as well.
Constraint:
The number of nodes in the list is in the range [0, 300].
-100 <= Node.val <= 100
The list is guaranteed to be sorted in ascending order.
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
# @return {ListNode}
def delete_duplicates(head)
    return head if !head || !head.next
    
    ret = ListNode.new(2**32-1, head)
    current = ret
    while current && current.next do
        if current.val == current.next.val
            current.next = current.next.next
        else
            current = current.next
        end
    end
    return ret.next
end