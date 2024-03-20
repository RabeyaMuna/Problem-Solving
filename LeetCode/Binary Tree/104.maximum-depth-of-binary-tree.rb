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
    return 0 if root.nil?
    
    left_count = 1 +  max_depth(root.left)
    right_count = 1 + max_depth(root.right)

    return [left_count, right_count].max
end
