require_relative 'node'
require_relative 'linked_list'

list = LinkedList.new

list.prepend(4)
list.prepend(7)
list.prepend(12)

p list.size