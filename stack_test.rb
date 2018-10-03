require 'minitest/autorun'
require_relative 'stack'

class StackTest < Minitest::Test
  def test_stack_initializer
    s = Stack.new
    assert_instance_of(Stack, s)
  end 

  def test_stack_push
    assert_equal 1, Stack.new.push(5).size
  end

  def test_stack_pop_empty
    assert_equal nil, Stack.new.pop
  end

  def test_stack_push_pop
    skip
    assert_equal 5, Stack.new.push(5).pop()
  end
end
