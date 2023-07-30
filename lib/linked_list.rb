require_relative 'node'

class LinkedList

    def initialize()
        @head = nil
        @tail = nil
    end

    def append(value)
        node = Node.new(value)

        if @head.nil?
            @head = node
            @tail = @head
        else
            @tail.next_node = node
            @tail = @tail.next_node
        end
    end

    def prepend(value)
        node = Node.new(value)

        if @head.nil?
            @head = node
            @tail = @head
        else
            node.next_node = @head
            @head = node
        end
    end

    def size()
        size = 0
        temp = @head

        until temp.nil? do 
            size += 1
            temp = temp.next_node
        end

        return size
    end

    def head()
        return "( #{@head.value} )"
    end

    def tail()
        return "( #{@tail.value} )"
    end

    def to_s()
        values = traverse_list()
        values << "nil"

        values.each do |value| 
            value.is_a?(Numeric) ? print("( #{value} ) -> ") : puts("#{value}")
        end
    end

    def at(index)
        values = traverse_list()
        return values[index]
    end

    def pop()
        temp = @head

        until temp.next_node == @tail do
            temp = temp.next_node
        end

        temp.next_node = nil
        @tail = temp
    end

    def contains?(value)
        contained = false
        temp = @head

        until temp.nil? do
            if value == temp.value 
                contained = true
                return contained
            end
            temp = temp.next_node
        end

        return contained
    end

    def find(value)
        index = 0
        temp = @head

        until temp.nil? do
            return index if value == temp.value 
            index += 1
            temp = temp.next_node
        end

        return index
    end

    private
    def traverse_list()
        values = Array.new
        temp = @head

        until temp.nil? do
            values << temp.value
            temp = temp.next_node
        end
        return values
    end
end