#!/usr/bin/env bash
#
# we need to run tests individually so we can look at the runtimes

for size in 100 10000 1000000 10000000
  do ruby test/stack_complexity.rb --name "test_stack_push_${size}"
done
