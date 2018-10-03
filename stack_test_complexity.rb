require 'minitest/autorun'
require_relative 'stack'

class StackComplexity < Minitest::Test
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
