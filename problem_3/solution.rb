require './linked_list_node'
require './list_infinite_detector'

def print_values(list_node)
  print "#{list_node.value} --> "
  if list_node.next_node.nil?
    print "nil\n"
    return
  else
    print_values(list_node.next_node)
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

if ListInfiniteDetector.infinite?(node3)
  puts "Infinite lists."
else
  print_values(node3)
end

puts "-------"

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node1.next_node = node3

if ListInfiniteDetector.infinite?(node3)
  puts "Infinite lists."
else
  print_values(node3)
end
