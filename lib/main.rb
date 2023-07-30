require_relative 'linked_list'

linked_list = LinkedList.new

linked_list.append(10)
linked_list.append(15)
linked_list.append(20)
linked_list.append(25)

linked_list.prepend(5)

puts "Size of the list: #{linked_list.size()}"

puts "Head of the list: #{linked_list.head()}"

puts "Tail of the list: #{linked_list.tail()}"

puts "Value at index 2: #{linked_list.at(2)}"

linked_list.to_s()

linked_list.pop()

linked_list.to_s()

puts "Size of the list: #{linked_list.size()}"

puts "Is 15 contained?: #{linked_list.contains?(15)}"
puts "Is 1 contained?: #{linked_list.contains?(1)}"

puts "Index of 15: #{linked_list.find(15)}"
