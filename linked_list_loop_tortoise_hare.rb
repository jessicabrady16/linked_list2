require_relative 'linked_list_node'

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node1.next_node = node3

def check_if_loop(first_node)
  tortoise = first_node
  hare = first_node

  while true
    #hare does 2 hops!
    if hare.next_node == nil
      return 'No Loop Found'
    end
    hare = hare.next_node
    if hare.next_node == nil
      return 'No Loop Found'
    end
    hare = hare.next_node
    tortoise = tortoise.next_node
    if hare == tortoise
      return 'Loop Found'
    end
  end
end

print check_if_loop(node3)
