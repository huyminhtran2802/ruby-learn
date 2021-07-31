=begin
Prompt:
Given the roots of two binary trees p and q, write a function to check if they are the same or not.
Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.
Constraint:
The number of nodes in both trees is in the range [0, 100].
-10**4 <= Node.val <= 10**4
=end

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
    return true if !q && !p
    return false if !p || !q
    return p.val == q.val && is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
    
end