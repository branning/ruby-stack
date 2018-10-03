class Stack
  attr_accessor :size

  def initialize
    @size = 0
    @things = Array.new
  end

  def push (value)
    @things[@size] = value
    @size += 1
    self
  end

  def pop
    return nil unless @size > 0
    @size -= 1
    @things.delete_at @size
  end
end
