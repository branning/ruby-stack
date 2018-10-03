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
    assert_equal nil, Stack.new.pop
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

  # suite of parameterized push, size, pop, max test
  [100, 10000, 1000000, 10000000].each do |stack_size|
    define_method("test_stack_push_#{stack_size}") do
      s = Stack.new
      stack_size.times do
        s.push(99)
      end
      assert_equal stack_size, s.size
    end
  end
end
