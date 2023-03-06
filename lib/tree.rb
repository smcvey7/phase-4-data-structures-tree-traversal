require 'pry'

class Tree
  def initialize(root = nil)
    @root = root
  end

  def breadth_first_traversal(node)
    result = []
    nodes_to_visit = [node]

    while nodes_to_visit.length > 0
      node = nodes_to_visit.shift
      result.push(node[:value])
      nodes_to_visit = nodes_to_visit + node[:children]
    end
    result
  end

  def depth_first_traversal(node)
    result = []
    nodes_to_visit = [node]

    while nodes_to_visit.length > 0
      node = nodes_to_visit.shift
      result.push(node[:value])
      nodes_to_visit = node[:children] + nodes_to_visit
    end
    result
  end

  def get_element_by_id(id)
    nodes_to_visit = @root[:children]

    while nodes_to_visit.length > 0
      node = nodes_to_visit.shift
      if node[:id] == id
        return node
      end
      nodes_to_visit = node[:children] + nodes_to_visit
    end
    nil
  end
end