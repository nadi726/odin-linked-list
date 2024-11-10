# frozen_string_literal: true

# A Node in a Linked List
class Node
  attr_accessor :value, :next_node

  def initialize
    # Problem definition says to initialize to nil for some reason...
    @value = nil
    @next_node = nil
  end

  def self.make(value, next_node)
    node = Node.new
    node.value = value
    node.next_node = next_node
    node
  end

  def append(value)
    if @next_node.nil?
      @next_node = Node.make(value, nil)
      return
    end
    @next_node.append(value)
  end

  def size
    @next_node.nil? ? 1 : 1 + @next_node.size
  end

  def end?
    @next_node.nil?
  end
end
