=begin
Prompt:
Merge two sorted linked lists and return it as a sorted list. 
The list should be made by splicing together the nodes of the first two lists.
Constraint:
The number of nodes in both lists is in the range [0, 50].
-100 <= Node.val <= 100
Both lists are sorted in non-decreasing order.
=end

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
    return nil if !l1 && !l2
    return l1 if !l2
    return l2 if !l2
    
    ret = ListNode.new
    c = ret
    
    while l1 && l2 do
        if l1.val <= l2.val
            c.next = l1
            l1 = l1.next
        else
            c.next = l2
            l2 = l2.next
        end
        c = c.next
    end
    if l1
        c.next = l1
    end
    if l2
        c.next = l2
    end
    return ret.next
end