[Back to main README](README.md)

## Ruby metaprogramming

Specs:  `spec/attr_accessor_with_history_spec.rb`

Skeleton: `lib/attr_accessor_with_history.rb`

In lecture we saw how  `attr_accessor` uses metaprogramming to create
getters and setters for object attributes on the fly.

Define a method `attr_accessor_with_history` that provides the same
functionality as attr accessor but also tracks every value the attribute
has ever had: 

```ruby
    class Foo 
      attr_accessor_with_history :bar
    end
    f = Foo.new        # => #<Foo:0x127e678>
    f.bar = 3          # => 3
    f.bar = :wowzo     # => :wowzo
    f.bar = 'boo!'     # => 'boo!'
    f.bar_history      # => [nil, 3, :wowzo]
```

(Calling `bar_history` before `bar`'s setter is ever called should
return `nil`.)

History of instance variables should be maintained separately for each
object instance. that is:

```ruby
    f = Foo.new
    f.bar = 1 ; f.bar = 2
    g = Foo.new
    g.bar = 3 ; g.bar = 4
    g.bar_history
```

then the last line should just return `[nil,3]`, rather than
`[nil,1,2,3]`.

If you're interested in how the template works,
the first thing to notice is that if we define
`attr_accessor_with_history` in class `Class`, we can use it as in the
snippet 
above. This is because a Ruby class like `Foo` or `String` is actually just an
object of class `Class`. (If that makes your brain hurt, just don't worry
about it for now. It'll come.) 

The second thing to notice is that Ruby
provides a method `class_eval` that takes a string and evaluates it in the
context of the current class, that is, the class from which you're
calling `attr_accessor_with_history`. This string will need to contain a
method definition that implements a setter-with-history for the desired
attribute `attr_name`. 
