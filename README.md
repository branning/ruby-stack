# ruby-stack

## What

A simple Ruby implementation of a stack-like data structure that supports each of these operations in O(1) (constant time):

- push: add a value to the top of the stack
- pop: remove the top value from the stack, and return it
- size: return the number of values in the stack
- max: return the largest value currently in the stack, leaving the stack unchanged 

## Oh, okay

Ruby has a very reasonable dyanamic array implementation called `Array`. It's so reasonable, it even has `push` and `pop` methods! But we won't use those, and instead we'll make a `C`-like array implementation of a stack, but lean on the dynamic resizing properties of the built-in `Array` class. Life becomes difficult when you try to manage memory more closely than this in Ruby, and arguably you could use a more appropriate language if you cared to.

## I want to run the tests

There are some `minitest` unit tests in [stack_test.rb](./stack_test.rb)

```console
gem install minitest
make test
```

## Is the complexity O(1)?

There was an attempt to test this, with increasing array sizes. Try running

    make complexity
