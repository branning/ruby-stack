test:
	ruby test/stack_test.rb

complexity:
	for size in 100 10000 1000000 10000000; do ruby test/stack_complexity.rb --name "test_stack_push_${size}"; done

.PHONY: test complexity
