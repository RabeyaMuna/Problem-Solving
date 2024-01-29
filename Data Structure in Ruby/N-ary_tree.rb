class Node
  attr_accessor :value, :children

  def initialize(value)
    @value = value
    @children = []
  end

  def add_child(child)
    @children << child
  end
end

class NaryTree
  attr_accessor :root

  def initialize(root_value)
    @root = Node.new(root_value)
  end
end

# Example usage:
nary_tree = NaryTree.new(1)

# Adding children to the root
nary_tree.root.add_child(Node.new(2))
nary_tree.root.add_child(Node.new(3))
nary_tree.root.add_child(Node.new(4))

# Adding children to the second child of the root
nary_tree.root.children[1].add_child(Node.new(5))
nary_tree.root.children[1].add_child(Node.new(6))

# Adding children to the third child of the root
nary_tree.root.children[2].add_child(Node.new(7))
nary_tree.root.children[2].add_child(Node.new(8))
