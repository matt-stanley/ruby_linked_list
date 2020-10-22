require_relative 'node'
require_relative 'linked_list'

list = LinkedList.new

list.append(4)
list.append(7)
list.append(9)
list.append(3)
list.append(2)
list.append(5)

p list.at(3)
