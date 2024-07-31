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
def inorder_traversal(root)
  return [] if root.nil?
  ans = []
  traverse(root,ans)
  return ans
end

def traverse(root,ans)
  if root != nil
      traverse(root.left, ans)
      ans.push(root.val)
      traverse(root.right, ans)
  end
end
