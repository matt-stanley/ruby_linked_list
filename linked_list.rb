require_relative 'node'

class LinkedList

  def initialize
    @head = Node.new("head")
    @tail = Node.new("tail")
    @head.next_node = @tail
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next_node = @head.next_node
    @head.next_node = new_node
  end


end
