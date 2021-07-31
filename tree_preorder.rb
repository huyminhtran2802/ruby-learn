=begin
Prompt: Given the root of a binary tree, return the preorder traversal of its nodes' values.
Constraint: 
The number of nodes in the tree is in the range [0, 100].
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
# @return {Integer[]}
def preorder(root, container)
    return if !root
    container.append(root.val)
    preorder(root.left, container)
    preorder(root.right, container)
end
def preorder_traversal(root)
    container = []
    preorder(root, container)
    return container
end