=begin
Prompt:
Given head, the head of a linked list, determine if the linked list has a cycle in it.

There is a cycle in a linked list if there is some node in the list that can be reached again by continuously following the next pointer. Internally, pos is used to denote the index of the node that tail's next pointer is connected to. Note that pos is not passed as a parameter.

Return true if there is a cycle in the linked list. Otherwise, return false.
Constraint:
The number of the nodes in the list is in the range [0, 10**4].
-10**5 <= Node.val <= 10**5
pos is -1 or a valid index in the linked-list.
=end
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
    container = Set.new
    current = head
    while current do
        return true if container.include?(current)
        container.add(current)
        current = current.next
    end
    return false
end