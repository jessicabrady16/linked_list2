require_relative 'linked_list_node'
# nil, 12, 99, 37 start want 37 , 99 , 12 nil
def reverse_list(list, previous = nil)
  while list != nil
    #keeping reference to next node so can step to it
    next_node = list.next_node
    #changes the list order
    list.next_node = previous
    #reassinging to point to previous value
    previous = list
    #reassinging to start with next value perameter for initializer
    list = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
reverse_list(node3)
print_values(node1)
