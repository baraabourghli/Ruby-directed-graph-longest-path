require './node.rb'


class Tree
  attr_accessor :root

  def traverse(node=root)
    stack = [node]
    current_path = [node]
    max_path_weight = node.weight
    current_path_weight = node.weight

    while !stack.nil? && !stack.first.nil?
      child =  stack.first
      child.visit
      if child.non_visited_children.nil?
        stack.shift
        current_path_weight -= child.weight
      else
        stack.unshift(child.non_visited_children)
      end
      current_path_weight += stack.first.weight unless stack.first.nil? || stack.first.visited?
      if current_path_weight > max_path_weight
        max_path_weight = current_path_weight 
        current_path = stack.clone
      end
    end
     puts "path"
     puts current_path.map {|t| t.weight}.reverse
  end
  
end