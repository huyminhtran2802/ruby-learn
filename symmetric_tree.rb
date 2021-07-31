=begin
Prompt: Given the root of a binary tree, check whether it is a mirror of itself (i.e., symmetric around its center).
Constraint:
The number of nodes in the tree is in the range [1, 1000].
-100 <= Node.val <= 100
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
# @param {TreeNode} root
# @return {Boolean}
def symmetric_helper(left, right)
    return true if !left && !right
    return false if !left || !right
    return left.val == right.val &&
            symmetric_helper(left.left, right.right) && 
            symmetric_helper(left.right, right.left)
end

def is_symmetric(root)
    return symmetric_helper(root, root)
end