class CircularQueue
  def initialize(size)
    @size = size
    @buffer = [nil] * size
    @read_index = 0
    @write_index = 0
  end

  def dequeue
    value_to_delete = buffer[read_index]
    unless value_to_delete.nil?
      buffer[read_index] = nil
      self.read_index = increment(read_index)
    end
    value_to_delete
  end

  def enqueue(value)
    self.read_index = increment(read_index) unless buffer[write_index].nil?
    buffer[write_index] = value
    self.write_index = increment(write_index)
  end

  private

  def increment(index)
    (index + 1) % size
  end

  attr_reader :buffer, :size
  attr_accessor :read_index, :write_index
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2
queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil
