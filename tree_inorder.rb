=begin
Prompt: Given the root of a binary tree, return the inorder traversal of its nodes' values.
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
def inorder(root, container)
    return if !root
    inorder(root.left, container)
    container.append(root.val)
    inorder(root.right, container)
end
    
def inorder_traversal(root)
    container = Array.new()
    inorder(root, container)
    return container
end