require 'pry'
class Node

  attr_accessor :left_child, :right_child, :weight, :visited

  def initialize(options)
    @right_child = options[:right_child] unless options[:right_child].nil?
    @left_child  = options[:left_child]  unless options[:left_child].nil?
    @weight      = options[:weight] || 0
    @visited     = false
  end

  def visited?
    @visited
  end

  def visit
    @visited = true
  end

  def non_visited_children
    if @left_child.present? && !@left_child.visited?
      @left_child
    elsif @right_child.present? && !@right_child.visited?
      @right_child
    else
        nil
    end
  end
end
