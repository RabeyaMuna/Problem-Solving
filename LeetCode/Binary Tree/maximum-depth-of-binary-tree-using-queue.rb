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
    
    queue = []
    queue.push(root)
    height = 0

    while !queue.empty?
      (0...queue.size).each do |i|
        temp_root = queue.shift
        queue.push(temp_root.left) if temp_root.left != nil
        queue.push(temp_root.right) if temp_root.right != nil
      end
      height += 1
    end

    return height
end
