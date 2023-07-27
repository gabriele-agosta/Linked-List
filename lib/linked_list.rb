require_relative 'node'

class LinkedList

    def initialize()
        @head = Node.new
        @tail = Node.new
    end

    def append(value)
        node = Node.new(value)

        if @head.value.nil?
            @head = node
            @tail = @head
        else
            @tail.next_node = node
            @tail = @tail.next_node
        end
    end
end