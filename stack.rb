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
end
