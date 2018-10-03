test:
	ruby test/stack_test.rb

complexity:
	bash test/complexity.sh

.PHONY: test complexity

tar: ../ruby_stack.tgz
	cd .. && tar --exclude='.git/' -cvf ruby_stack.tgz ruby-stack/
