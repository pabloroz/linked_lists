require "minitest/autorun"
require './list_infinite_detector'
require './linked_list_node'

describe ListInfiniteDetector do

  describe "when given an empty list" do
    it "should not be infinite" do
      ListInfiniteDetector.infinite?(nil).must_equal false
    end
  end

  describe "when given a single element list" do
    it "should not be infinite" do
      list = LinkedListNode.new(37)
      ListInfiniteDetector.infinite?(list).must_equal false
    end
  end

  describe "when given a finite list" do
    it "should not be infinite" do
      list = LinkedListNode.new(37)
      list = LinkedListNode.new(99, list)
      list = LinkedListNode.new(12, list)
      
      ListInfiniteDetector.infinite?(list).must_equal false
    end
  end

    describe "when given an infinite list" do
    it "should be infinite" do
      list_head = LinkedListNode.new(37)
      list = LinkedListNode.new(99, list_head)
      list = LinkedListNode.new(12, list)
      list_head.next_node = list

      ListInfiniteDetector.infinite?(list).must_equal true
    end
  end


end
