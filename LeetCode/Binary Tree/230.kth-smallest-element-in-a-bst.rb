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
# @param {Integer} k
# @return {Integer}
def kth_smallest(root, k)
  inorder_list = find_kth_smallest(root, [])

  return inorder_list[k - 1]
end

def find_kth_smallest(root, list)
  return if root.nil?

  find_kth_smallest(root.left, list)
  list.push(root.val)
  find_kth_smallest(root.right, list)

  list
end
