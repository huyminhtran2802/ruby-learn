=begin
Prompt:
Given the root of a binary tree, return its maximum depth.
A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
Constraint:
The number of nodes in the tree is in the range [0, 104].
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
# @return {Integer}
def max_depth(root)
    return 0 if !root
    
    queue = []
    queue.append(root)
    depth = 0
    
    while queue.length != 0 do
        size = queue.length
        for i in 0...size do
            current = queue.shift
            queue.append(current.left) if current && current.left
            queue.append(current.right) if current && current.right
        end
        depth += 1
    end
    return depth
end