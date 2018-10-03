require 'minitest/autorun'
require_relative 'stack'

class StackTest < Minitest::Test
  def test_stack_initializer
    s = Stack.new
    assert_instance_of(Stack, s)
  end 

  def test_stack_push
    assert_instance_of(Stack, Stack.new.push(5))
  end

  def test_stack_size
    assert_equal 1, Stack.new.push(5).size
  end

  def test_stack_pop_empty
    assert_nil Stack.new.pop
  end

  def test_stack_push_pop
    assert_equal 5, Stack.new.push(5).pop()
  end

  def test_stack_max_empty
    s = Stack.new
    assert_nil s.max
  end

  def test_stack_max
    s = Stack.new.push(3).push(5).push(4)
    assert_equal 5, s.max
    s.pop
    assert_equal 5, s.max
    s.pop
    assert_equal 3, s.max
  end

end
