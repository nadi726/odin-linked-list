# frozen_string_literal: true

require_relative 'node'
# A classic singly-linked list
class LinkedList
  def initialize
    @head = nil
  end

  # Adds a node to the end of the list
  def append(value)
    if @head.nil?
      @head = Node.make(value, nil)
    else
      @head.append(value)
    end
  end

  # Adds a node to the beginnig of the list
  def prepend(value)
    @head = Node.make(value, @head)
  end

  # Returns the number of nodes
  def size
    return 0 if @head.nil?

    @head.size
  end

  attr_reader :head

  def tail
    return nil if @head.nil?

    node = @head
    node = node.next_node until node.next_node.nil?
    node
  end
end
