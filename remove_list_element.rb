=begin
Prompt:
Given the head of a linked list and an integer val, remove all the nodes of the linked list that has Node.val == val, and return the new head.
Constraint:
The number of nodes in the list is in the range [0, 10**4].
1 <= Node.val <= 50
0 <= val <= 50
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
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
    return head if !head
    
    current = ListNode.new(-1, head)
    ret = current
    while current.next do
        if current.next.val == val
            current.next = current.next.next
        else
            current = current.next
        end
    end
    return ret.next
end