# My Solution:
def searchTree(root, val)
  return 1 if (root.value == val)
  if (root.left && root.right)
    return searchTree(root.right, val)
    return searchTree(root.left, val)
  elsif !(root.left)
    return searchTree(root.right, val)
  elsif !(root.right)
    return searchTree(root.left, val)
  end
  0
end

# Found a tested tree class that generates trees on http://scottbot.me/binary-search-tree-traversals-in-ruby/

Node = Struct.new(:value, :left, :right)

class Tree
  attr_accessor :root

  def initialize(value = nil)
    puts "initializing with " + value.to_s
    @root = Node.new(value)
  end

  def Tree.build_tree(array)
    tree = Tree.new
    array.each do |value|
      tree.insert(value)
    end
    return tree
  end

  def insert(value)
    puts "inserting: " + value.to_s
    @root = Node.new(value) if @root.value == nil
    current_node = @root
    while current_node != nil
      if (value < current_node.value) && (current_node.left == nil)
        current_node.left = Node.new(value)
      elsif (value > current_node.value) && (current_node.right == nil)
        current_node.right = Node.new(value)
      elsif (value < current_node.value)
        current_node = current_node.left
      elsif (value > current_node.value)
        current_node = current_node.right
      else
        return
      end
    end
  end

  # Pre-Order Traversal (self, left subtree, right subtree)
  def pre_order_traversal(node= @root)
    return if (node == nil)
    pre_order_traversal(node.left)
    pre_order_traversal(node.right)
    puts node.value.to_s
  end

  # In-Order Traversal : (left subtree, self, right subtree)
  def in_order_traversal(node = @root)
    return if (node == nil)
    in_order_traversal(node.left)
    puts node.value.to_s
    in_order_traversal(node.right)
  end

  # Post-Order Traversal (left subtree, right subtree, self)
  def post_order_traversal(node = @root)
      return if (node == nil)
      puts node.value.to_s
      post_order_traversal(node.left)
      post_order_traversal(node.right)
  end
end
