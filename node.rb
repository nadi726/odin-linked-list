# frozen_string_literal: true

# A Node in a Linked List
class Node
  attr_accessor :value, :next_node

  def initialize
    # Problem definition says to initialize to nil for some reason...
    @value = nil
    @next_node = nil
  end
end
