require 'byebug'

class Stack
    def initialize(arr)
        @this_stack = []       #create ivar to store stack here!
    end

    def push(el)
        this_stack.push#adds an element to the stack
        el
    end

    def pop
        return [] if this_stack.length == 1
        this_stack.pop
    end
    
    def peek
        this_stack[-1]    # returns, but doesn't remove, the top element in the stack
    end

    private
    attr_reader :this_stack
end

