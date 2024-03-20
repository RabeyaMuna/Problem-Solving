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
def is_valid_bst(root)
  inorder_list = []

  traverse_tree(root, inorder_list)

  left = 0
  right = left + 1

  while right < inorder_list.size
    if inorder_list[left] >= inorder_list[right]
      return false
    end

    right += 1
    left += 1
  end

  return true
end

def traverse_tree(root, inorder_list)
   if root == nil
     return inorder_list
    end

    traverse_tree(root.left, inorder_list)
    inorder_list.push(root.val)
    traverse_tree(root.right, inorder_list)
end
