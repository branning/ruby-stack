class Stack
  attr_accessor :size

  def initialize
    @size = 0
    @things = Array.new
    @max = Array.new
  end

  def push (value)
    @things[@size] = value
    if @size == 0
      @max[@size] = value
    else
      @max[@size] = value > self.max ? value : self.max
    end
    @size += 1
    self
  end

  def pop
    return nil unless @size > 0
    @size -= 1
    @max.delete_at @size
    @things.delete_at @size
  end

  def max
    return nil unless @size > 0
    @max[@size - 1]
  end
end
