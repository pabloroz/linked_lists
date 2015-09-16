require './linked_list_node'

class Stack
    attr_reader :data

    def initialize
      @data = nil
    end

    # Push an item onto the stack
    def push(element)
      @data = LinkedListNode.new(element, data)
    end

    # Pop an item off the stack.  
    # Remove the last item that was pushed onto the
    # stack and return it to the user
    def pop
      if data
        element = data
        @data = data.next_node
        return element.value
      else
        return nil
      end
    end
end
