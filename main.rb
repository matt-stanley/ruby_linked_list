require_relative 'node'
require_relative 'linked_list'

list = LinkedList.new

list.append(4)
list.append(7)
list.append(9)
list.append('aooke')
list.append(2)
list.append(5)

p list.contains?('apple')