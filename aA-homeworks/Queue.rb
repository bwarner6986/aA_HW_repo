require 'byebug'

class Queue
    
    def initialize
        @this_queue = []
    end

    def enqueue(el)
        this_queue.push(el)
    end

    def dequeue
        first_out = this_queue.first
        this_queue.shift
        first_out
    end

    def peek
        raise "queue is empty" if self.length < 1
        this_queue.first
    end

    private
    attr_reader :this_queue
end