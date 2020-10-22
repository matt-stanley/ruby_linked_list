require_relative 'node'

# Each instance is a new linked list.
class LinkedList

  def initialize
    @head = Node.new
  end

  def head
    @head
  end

  def tail
    node = @head

    until node.next_node.nil?
      node = node.next_node
    end

    node
  end

  def append(value)
    new_node = Node.new(value)

    if @head.value.nil?
      @head = new_node
      return
    end
    tail_node = tail
    tail_node.next_node = new_node
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next_node = @head
    @head = new_node
  end

  def size
    return 0 if @head.value.nil?;

    node = @head
    size = 1

    until node.next_node.nil?
      node = node.next_node
      size += 1
    end

    size
  end

  def at(index)
    node = @head

    index.times do
      node = node.next_node
    end

    node
  end

  def pop
    at(size - 1).next_node = nil
  end

  def contains?(value)
    node = @head

    until node.nil?
      if node.value == value
        return true
      end
      node = node.next_node
    end
    false
  end

  def find(value)
    node = @head
    index = 0

    until node.nil?
      return index if node.value == value

      node = node.next_node
      index += 1
    end

    nil
  end

  def to_s
    node = @head
    message = node.value.to_s

    node = node.next_node

    until node.nil?
      message += " -> #{node.value}"
      node = node.next_node
    end

    message
  end

  def insert_at(value, index)
    new_node = Node.new(value)
    node_before = at(index - 1)

    new_node.next_node = node_before.next_node
    node_before.next_node = new_node
  end

end
