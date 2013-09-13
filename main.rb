require './tree.rb'
tree  = Tree.new
node1 = Node.new(:weight => 19,:right_child => Node.new(:weight => 56),:left_child => Node.new(:weight => 45))
node2 = Node.new(:weight => 4,:right_child => node1.left_child,:left_child => Node.new(:weight => 13))
root  = Node.new(:weight => 1,:right_child => node1,:left_child => node2)
tree.root = root
tree.traverse