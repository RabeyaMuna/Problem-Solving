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
# @param {Integer} target_sum
# @return {Boolean}
def has_path_sum(root, target_sum)
  return false if root.nil?

  path_node = []
  path_node_sum = []
  
  path_node.push(root)
  path_node_sum.push(root.val)

  while !path_node.empty?
    parent = path_node.pop
    sum_path = path_node_sum.pop

    if parent.left == nil && parent.right == nil && sum_path == target_sum
       return true
    end

    if parent.left != nil
      path_node.push(parent.left)
      path_node_sum.push(sum_path+path_node.last.val)
    end

    if parent.right != nil
      path_node.push(parent.right)
      path_node_sum.push(sum_path+path_node.last.val)
    end
  end

  return false
end
