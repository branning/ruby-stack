require 'minitest/autorun'
require_relative 'stack'

class StackTest < Minitest::Test
  def test_stack_initializer
    s = Stack.new
    assert_instance_of s Stack
  end 

  def test_stack_push_pop
    assert_equal 5, Stack.new.push(5).pop()
  end
end