require_relative 'node'

class LinkedList

  def initialize
    @head = Node.new("head")
    @tail = Node.new("tail")
    @head.next_node = @tail
  end

  def append(value)
    # TODO
    0
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next_node = @head.next_node
    @head.next_node = new_node
  end

  def head
    @head.next_node
  end

  def tail
    # TODO
    0
  end

  def size
    size = 0
    node = @head.next_node

    until node.next_node.nil?
      size += 1
      node = node.next_node
    end

    size
  end

end
