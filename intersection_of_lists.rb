=begin
Prompt:
Given the heads of two singly linked-lists headA and headB, return the node at which the two lists intersect. 
If the two linked lists have no intersection at all, return null.
Constraint:
The number of nodes of listA is in the m.
The number of nodes of listB is in the n.
0 <= m, n <= 3 * 10**4
1 <= Node.val <= 10**5
0 <= skipA <= m
0 <= skipB <= n
intersectVal is 0 if listA and listB do not intersect.
intersectVal == listA[skipA] == listB[skipB] if listA and listB intersect.
=end

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}
def getIntersectionNode(headA, headB)
    container = Hash.new()
    currentA = headA
    currentB = headB
    
    while currentA do
        container[currentA] = true
        currentA = currentA.next
    end
    
    while currentB do
        return currentB if container.include?(currentB)
        container[currentB] = true
        currentB = currentB.next
    end
    
    return nil
end