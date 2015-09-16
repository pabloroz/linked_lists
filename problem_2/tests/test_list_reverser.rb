require "minitest/autorun"
require './list_reverser'
require './linked_list_node'

describe ListReverser do

  describe "when given an empty list" do
    it "must return an empty list" do
      ListReverser.reverse_list(nil).must_equal nil
    end
  end

  describe "when given a single element list" do
    it "must return that element" do
      list = LinkedListNode.new(37)
      reversed_list = ListReverser.reverse_list(list)

      list.value.must_equal reversed_list.value
      list.next_node.must_equal nil
    end
  end

  describe "when given a list" do
    it "must reverse it" do
      list = LinkedListNode.new(37)
      list = LinkedListNode.new(99, list)
      list = LinkedListNode.new(12, list)
      
      reversed_list = ListReverser.reverse_list(list)

      reversed_list.value.must_equal 37
      reversed_list.next_node.value.must_equal 99
      reversed_list.next_node.next_node.value.must_equal 12
    end
  end

end
