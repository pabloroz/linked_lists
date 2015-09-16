require "minitest/autorun"
require './stack'

describe Stack do

  before do
    @stack = Stack.new
  end

  describe "when it is fresh" do
    it "must be empty" do
      @stack.data.must_equal nil
    end
    it "must pop nil" do
      @stack.pop.must_equal nil
    end
  end

  describe "when push an element" do
    it "must be in the data" do
      @stack.push(20)
      @stack.pop.must_equal 20
    end
  end

  describe "when pop an element" do
    it "must be removed from the stack" do
      @stack.push(20)
      @stack.push(30)
      @stack.pop.must_equal 30
      @stack.pop.must_equal 20
      @stack.pop.must_equal nil
    end
  end

end
