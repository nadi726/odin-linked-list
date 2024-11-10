# frozen_string_literal: true

require_relative 'lib/linked_list'

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

# should be ( dog ) -> ( cat ) -> ( parrot ) -> ( hamster ) -> ( snake ) -> ( turtle ) -> nil
puts list

puts list.pop # Should be turtle

# should be ( dog ) -> ( cat ) -> ( parrot ) -> ( hamster ) -> ( snake ) -> nil
puts list

list.prepend 'camel'
# should be ( camel ) -> ( dog ) -> ( cat ) -> ( parrot ) -> ( hamster ) -> ( snake ) -> nil
puts list

puts list.size # should be 6

puts list.head&.value # should be camel
puts list.tail&.value # should be snake

puts list.at(3)&.value # Should be parrot
p list.at(10)&.value # Should be nil

puts list.contains? 'hamster' # Should be true
puts list.contains? 'hamsterrrr' # Should be false

puts list.find('cat') # should be 2
p list.find('Aha!') # should be nil

list.insert_at('dragon', 3)
# should be ( camel ) -> ( dog ) -> ( cat ) -> ( dragon ) -> ( parrot ) -> ( hamster ) -> ( snake ) -> nil
puts list

list.remove_at(0)
list.remove_at(3)
# should be ( dog ) -> ( cat ) -> ( dragon ) -> ( hamster ) -> ( snake ) -> nil
puts list

p LinkedList.new.remove_at(0) # Should be nil
