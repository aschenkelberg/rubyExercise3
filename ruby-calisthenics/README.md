Ruby Calisthenics
=================

The goal of this multi-part assignment is to get you accustomed to basic
Ruby coding and introduce you to RSpec, the unit testing tool we will be
using heavily.

While we provide an explanation of how your code should work in this
handout, you should get accustomed to the idea that the true
specification is in the test files!

Therefore, we suggest you work on this assignment using `autotest`,
which automatically re-runs all the RSpec tests each time you make
changes to your code:

1. In a terminal window, change to the root directory of this homework
(the one containing subdirectories `lib/` and `spec/`) and run the
command `autotest`.  RSpec expects to find code files under `lib/` and
the corresponding spec files under `spec/`.

2. Initially, all tests are marked
"pending", as indicated by the argument `:pending => true` in each
`describe` block.  To start working on a question, remove this option:

e.g. in `fun_with_strings_spec.rb`, change:

```ruby
    describe 'palindrome detection', :pending => true do
```

to

```ruby
    describe 'palindrome detection' do
```

and save the spec file.  `autotest` will
detect the change and automatically re-run the tests in that group, which
will now fail (displayed in red) since you haven't written any code yet.

3. As you fill in code in the appropriate files under `lib/`, each time
you save changes to that file the tests will automatically be re-run.
When a test passes, it's displayed in green.  Your goal is to get all
tests for all parts to pass green.

(Note: when you submit your assignment, we may also run additional
test cases beyond the ones given here.)


Exercises
--------

* Part 1 [Fun with Words and Strings](fun_with_words_and_strings.md)
* Part 2 [Basic Object-Oriented Programming for Dessert](basic_object_oriented_programming_for_desert.md)
* Part 3 [Rock-Paper-Scissors](rock_paper_scissors.md)
* Part 4 [Ruby Metaprogramming](ruby_metaprogramming.md)


HINTS:
------

* Don't forget that the very first time the attribute receives a value,
its history array will have to be initialized.  
* An
attribute's initial value is always `nil` by default, so if
`foo_history` is referenced before `foo` has ever been assigned, the
correct answer is `nil`, but after the first assignment to `foo`, the
correct value for `foo_history` would be `[nil]`.
* Don't forget that instance variables are referred to as `@bar` within getters and setters, as Section 3.4 of ELLS explains.
* Although the existing `attr_accessor` can handle multiple arguments (e.g. `attr_accessor :foo, :bar`), your version just needs to handle a single argument.
* Your implementation should be genreal enough to work in the context of any class and for attributes of any (legal) variable name

