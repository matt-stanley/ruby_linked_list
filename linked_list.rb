require_relative 'node'

# Each instance is a new linked list.
class LinkedList

  def initialize
    @head = Node.new('head')
    @tail = Node.new('tail')
    @head.next_node = @tail
  end

  def append(value)
    new_node = Node.new(value)
    tail_node = tail
    new_node.next_node = tail_node.next_node
    tail_node.next_node = new_node
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
    node = @head

    until node.next_node.next_node.nil?
      node = node.next_node
    end

    node
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
