class ListReverser
  
  def self.reverse_list_iterative(list, previous = nil)
    reversed_list = nil
    while list
      previous_next_node = list.next_node
      list.next_node = reversed_list
      reversed_list = list
      list = previous_next_node
    end
    reversed_list
  end

  def self.reverse_list_recursive(list, previous = nil)
    if list
      unless list.next_node
        list.next_node = previous
        return list
      end
      new_head = list
      new_tail = list.next_node
      new_head.next_node = previous
      return ListReverser.reverse_list(new_tail, new_head)
    end
  end

  def self.reverse_list(list, previous = nil)
    # ListReverser.reverse_list_iterative(list, previous)
    ListReverser.reverse_list_recursive(list, previous)
  end

end 
