require './stack'

class ListReverser
  
  def self.reverse_list(list)
	  stack = Stack.new
	  stack.push(list.value) while list = list.next_node
	  return stack.data
	end

end	
