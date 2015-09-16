class ListInfiniteDetector
  
  def self.infinite?(list)
    tortoise = hare = list
    while tortoise && hare && tortoise.next_node && hare.next_node && hare.next_node.next_node
      tortoise = tortoise.next_node
      hare = hare.next_node.next_node
      return true if tortoise == hare
    end
    return false
  end

end	
