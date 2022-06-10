**A1:** (A), (D)

[Module#define_method](https://docs.ruby-lang.org/en/3.1/Module.html#method-i-define_method) defines an instance method in the receiver. However, the variable `name` is shared by `Stack#push` and `Stack#pop` in (B), so both methods call `@contents.send(:pop, *args)`.

`def` defines a singleton method in [BasicObject#instance_eval](https://docs.ruby-lang.org/en/3.1/BasicObject.html#method-i-instance_eval), while `def` defines an instance method in [Module#class_eval](https://docs.ruby-lang.org/en/3.1/Module.html#method-i-class_eval).

-----------------------------------------------------------------

**A2:** (A)

- A class that does not explicitly specify its parent class automatically inherits from `Object`, which mixes in the `Kernel` module and inherits from `BasicObject`.

- Modules mixed into a class via `include` appear between that class and its parent class in the ancestry chain.

- Modules mixed into a class via `prepend` appear before that class in the ancestry chain.

Using `prepend` is only necessary when you either want to override some definition in the class you are extending with a module mixin. Otherwise, `include` works fine, even for overriding functionality of modules that have already been included.

-----------------------------------------------------------------

**A3:** (A)

Suffixing a literal number with `r` tells Ruby to construct a `Rational` object. The same result can be achieved in a few other ways as well (e.g. `1 / 3.to_r` or `Rational(1, 3)`)

-----------------------------------------------------------------

**A4:** (A), (C)

The `take()` method is defined by `Enumerator::Lazy`, and so execution is deferred until enumeration is forced in some way. (The return value of this method will be an `Enumerator::Lazy` object)

An `Enumerator::Lazy` object inherits from `Enumerator` and also includes the `Enumerable` module.

Calling an `Enumerable` method that isn't overridden by `Enumerator::Lazy` will force enumeration. This is why calling `first(3)` does not require (or allow) calling the `.force` method afterwards: Its return value is an `Array`, not an `Enumerable::Lazy` object, and the operation is executed immediately.

Note that the `force()` method on `Enumerator::Lazy` is just an alias for `Enumerable#to_a`.

-----------------------------------------------------------------

**A5:** (D)

`...` forwards rest arguments including keyword arguments and the block.

-----------------------------------------------------------------

**A6:** (A)

Private methods cannot be called with an explicit receiver, except when the receiver is `self`.

-----------------------------------------------------------------

**A7:** (B) and (C)

The `class << ...` syntax is used to open up the singleton class of an object, allowing methods to be defined on that specific object.

Because classes are objects in Ruby, it is possible to add methods directly to classes in this way, for example:

```
class << Greeter
  def hello
    # ...
  end
end
```

But the more common way is to use `class << self` from within a class body as shown in the question's code.

---------------------------------------------------------------

**A8:** (A) and (C)

Every method in Ruby may accept a block, whether it is explicitly specified in the method signature or not.

The `yield` keyword is used for calling a block implicitly.
The `&block` syntax is used for converting the block into a `Proc` object, which can then be invoked via `call()`, or passed along to some other method, etc.

-----------------------------------------------------------------

**A9:** (B) and (C)

- When invoking blocks with arguments via `yield`, functional style syntax is used.
- When invoking blocks via a `Proc` object, arguments are passed to the `call()` method.

-----------------------------------------------------------------

**A10:** (B)

Class variables are shared not just within a single class, but also downwards through the inheritance hierachy. So when `A` defines `@@x`, that variable is shared with its child classes `B` and `C`, and all three reference the same variable.

Class variables are one of the more complex features of Ruby, and so this study guide does not cover anything beyond their most basic behaviors.

-----------------------------------------------------------------

**A11:** (D)

A `Proc` object encapsulates a block and allows it to be called later via `Proc#call`. Each `Proc` object forms a closure, which binds the block to the local variables that were in scope wherever the `Proc` is defined. 

-----------------------------------------------------------------

**A12:** (A) and (C)

Although `Proc.new` and `lambda` each create a `Proc` object, they are not identical to one another in behavior. 

- A `Proc` generated via `lambda` is strict about its accepted arguments, whereas an ordinary `Proc` will ignore extra unused arguments. 

- A `return` call from within a `lambda` returns from the lambda itself, whereas a `return` call from an ordinary `Proc` object will return from the method that invoked the block.

-----------------------------------------------------------------

**A13:** (A)

The `->(...) { }` (lambda literal) syntax is a shorthand notation equivalent to `lambda { |...| }`.

-----------------------------------------------------------------

**A14:** (D)

`define_method` at toplevel defines a method in `Object`.

(A), (B), and (C) creates an `Proc` object, and assigns it to a local variable `add`, but `add(1, 2)` doesn't call the `Proc` object.

-----------------------------------------------------------------

**A15:** (C)

`<<~EOF` is called a squiggly heredoc, and it strips leading whitespace.

-----------------------------------------------------------------

**A16:** (C)

Also note that:

- `Object#dup` does not copy an object's singleton methods.
- `Marshal.dump` is unable to serialize objects that have singleton methods defined on them.
- There is no `Object#copy` method.

-----------------------------------------------------------------

**A17:** (A)

Many Ruby methods (including `Kernel#puts`) call `to_s` in order to convert objects into a string representation. The default implementation of `Object#to_s` produces simple, generic output which looks like this: 

`#<ShoppingList:0x007fb651918610>`

When the `to_s` method is overidden in other objects, it can be used to provide a better string representation of the object, as shown in this question.

-----------------------------------------------------------------

**A18:** (C)

The `Kernel#p` method calls `inspect` on its arguments in order to produce strings that can be used for debugging purposes. The default functionality of `Object#inspect` lists provides basic useful information, but the output can be customized by overriding the method in specific classes or objects.

-----------------------------------------------------------------

**A19:** (D)

`x..` represents a semi-infinite range.

[Enumerable#lazy](https://docs.ruby-lang.org/en/3.1/Enumerable.html#method-i-lazy) returns an Enumerator::Lazy, which redefines most Enumerable methods to postpone enumeration and enumerate values only on an as-needed basis.

-----------------------------------------------------------------

**A20: (B)**

[Enumerable#filter_map](https://docs.ruby-lang.org/en/3.1/Enumerable.html#method-i-filter_map) returns an array containing truthy elements returned by the block.

-----------------------------------------------------------------

**A21: (D)**

The splat operator (`*`) can be used to place all remaining rvalues into an array and assign them to a single variable.

-----------------------------------------------------------------

**A22:** (B)

The splat operator (`*`) when used with a method parameter makes it so that all remaining arguments are wrapped up in an array and referred to by this one parameter. In answer *(B)* above, the `fx(*args)` method accepts zero or more arguments, and places them all within the `args` array. So when `fx(["apple", "banana", "carrot"])` is called, the single argument (an array) is placed inside of another array, so `args` refers to `[["apple","banana","carrot"]]`.

-----------------------------------------------------------------

**A23:** (A)

`_1`, `_2`, `_3`... are implicitly defined block parameters called **numbered parameters**.

-----------------------------------------------------------------

**A24:** (D)

When a required keyword argument is not specified, an `ArgumentError` is raised.

-----------------------------------------------------------------

**A25:**  (B), (C) and (D)

When working with methods that use keyword parameters, the `**` operator can be used to capture any keywords which were not explicitly specified into an optional `Hash`.

The `**` operator can also be used when calling a method to convert a hash into a keyword arguments list.

-----------------------------------------------------------------

**A26:** (A) and (C)

Because classes are objects in Ruby, it is possible to define class instance variables.

All objects in Ruby also have a *singleton class* associated with them, even class objects.

In this example, there is an instance variable named `@message` on the `Speaker` class as well as on the singleton class of `Speaker`. These are two seperate variables.

The singleton method `Speaker.speak` is evaluated in the context of the `Speaker` class, and so `@message` refers to the instance variable defined within the `Speaker` class definition, and not the instance variable defined within the singleton class of `Speaker`.

-----------------------------------------------------------------

**A27:** (B)

In this example `class << Speaker` reopens the singleton class of `Speaker`, and within that context `@message` refers to an instance variable defined directly on that singleton class object.

-----------------------------------------------------------------

**A28:** (C)

Within a `catch` block, code executes normally until a `throw` statement is executed. Then if the symbol passed via `throw` matches the `catch` symbol, Ruby terminates the block and continues running whatever follows it. 

If a `catch` block does not match the `throw`, Ruby will continue in an inside-out fashion through any nested `catch` blocks until it finds one that matches the thrown symbol or reaches the top-level, where an uncaught `throw` will cause an exception to be raised.

-----------------------------------------------------------------

**A29:** (C)

When the two argument form of `throw` is used, the second argument is returned from the matching `catch` call.

-----------------------------------------------------------------

**A30:** (A) and (C)

The ancestry chain for each of the classes listed in this question is as follows:

```
ArgumentError < StandardError < Exception

ScriptError < Exception
```

If `rescue` is called without a specific error class, it will catch `StandardError` and its descendents by default. Most exceptions in core Ruby are descendents of `StandardError`, but there are some that are not usually meant to be rescued which exist in other class hierarchies which descend directly from the `Exception` base class.

-----------------------------------------------------------------

**A31:** (C)

A bare `rescue` statement matches `StandardError` and its descendents. As such, it will not match any exceptions which inherit from the `Exception` base class directly.

Within a single `begin/end` block, only the first matched `rescue` clause will be run, even if there are multiple clauses that match. 

-----------------------------------------------------------------

**A32:** (D)

Even though `rescue Exception` and `rescue AnError` both match the raised exception, in this example the `rescue Exception`  clause appears first in the block, and so that branch is executed and all the remaining `rescue` clauses that follow it are ignored.

-----------------------------------------------------------------

**A33:** (D)

The `=>` separator can be used within a `rescue` clause to define a variable that refers to an `Exception` object that corresponds to the specific exception that was raised.

-----------------------------------------------------------------

**A34:** (A)

When `raise` is called within a `rescue` branch without specifying an exception type, the raised exception type will match whatever exception was rescued.

When `raise` is called and there has not been any exceptions rescued in the current context, `RuntimeError` will be raised by default.

-----------------------------------------------------------------

**A35:** (C)

The `ensure` branch of a method (or begin/end block) is always run, whether an exception was raised or not. However, there is no implicit return value from an `ensure` branch, and so instead the implicit return value is set to the result of the expression that ran just before the `ensure` branch was executed.

-----------------------------------------------------------------

**A36: (B)**

The `self` keyword always refers to the current object. Within a class method, `self` refers to an instance of a `Class` object that represents the current class. Within an instance method definition, `self` refers to a specific instance of the current class.

-----------------------------------------------------------------

**A37:** (B)

In class methods, `self` refers to an instance of the `Class` object.
In instance methods, `self` refers to whatever the currently instantiated object is.

-----------------------------------------------------------------

**A38:** (D)

Even in complex ancestry chains including module mixins and class inheritance, `self` will always refer to receiving object within the current context. 

In this particular example, that means that even though the `this_object` is defined by the `Mixin` module, it is included into and called on an instance of the `Identity` class, and therefore `self` refers to that specific object.

-----------------------------------------------------------------

**A39:** (B)

Even though the `Class` class is a subclass of `Module`, class objects cannot be used as mixins (i.e. you cannot use a `Class` object with `include`, `extend`, or `prepend`)

The class inheritance relationship between `Module` and `Class` in Ruby is mostly an implementation detail, as the two constructs have some overlapping functionality and purposes--but neither is a pure behavioral subtype of the other.

-----------------------------------------------------------------

**A40:** (A)

In this example, the `greet` method was defined on the `Mixin` module itself, rather than defined as a method that can be mixed into other objects.

(To see how to define methods that can both be mixed into objects and called directly on a module, look up information about Ruby's `module_function` feature, or the `extend self` convention.)

-----------------------------------------------------------------

**A41:** (C)

The `extend` method is used to mix a module into a single object. When used within a class definition, `extend` refers to the class itself, and therefore the methods from the mixed in module become available as class methods.

But `extend` can also be used with any object, i.e.

```
obj = Object.new
obj.extend(Mixin)
obj.greet
```

-----------------------------------------------------------------

**A42:** (B)

The `include` method mixes a module into a class so that its methods become available as instance methods.

-----------------------------------------------------------------

**A43:** (B)

A `protected` method can only be called from within an instance of the same class, or one of its descendents.

-----------------------------------------------------------------

**A44:** (B)

[Pattern matching](https://docs.ruby-lang.org/en/3.1/syntax/pattern_matching_rdoc.html) is a feature allowing deep matching of structured values.

For pattern matching, `in` is used instead of `when` in the `case` expression.

-----------------------------------------------------------------

**A45:** (B)

The `Enumerable` mixin expects that any object it is mixed into will implement an `each` method, which yields elements one by one to a block. The many list processing features of `Enumerable` are all implemented on top of `each` in some way or another.

To understand `Enumerable` better, it can help to think about how each of its features might be implemented manually. For example, suppose that `each` has already been defined, then a `select` method could be defined as follows:

```
def select(&b)
  matched = []
  
  each { |e| matched << e if b.call(e) }
  
  matched
end
```

This general pattern is common in mixins: functionality is provided based on a very simple contract with the mixed in object, where you only need to implement a small piece of glue code in order to make use of its features.

-----------------------------------------------------------------

**A46:** (B)

The `Comparable` module provides all of the comparison methods used in this example (`<`, `<=`, `==`, `>=`, `>`).

Each of these methods rely on the presence of a `<=>` operator which returns a negative number, zero, or a positive number depending on the sort order of two values. Ruby's core `Numeric` classes all implement this functionality, and so the following example with integers should help clarify:

```
3 <=> 8 # -1
8 <=> 8 #  0
8 <=> 3 #  1
```

With this example in mind, you can think of `Comparable`'s implementation of `<` as looking something like what you see below:

```
def <(other)
  (self <=> other) < 0
end
```

Like `Enumerable`, the `Comparable` mixin is a good example of how modules tend to rely on only a small amount of functionality being implemented by the classes they're mixed into in order to make all their features work.

-----------------------------------------------------------------

**A47:** (C)

The `<<` operator generates a new `Date` object that is *n months* earlier than the current date.

The `>>` operator generates a new `Date` object that is *n months* later than the current date.

In cases where the exact day of month cannot be matched (i.e. a month with 31 days vs. 30 days, or leap year vs. non-leap year), the `<<` and `>>` operators will return a date corresponding to the last valid date in that month.

```
puts(Date.new(2016,2,29) << 12) #=> 2015-02-28
puts(Date.new(2016,12,31) << 1) #=> 2016-11-30
puts(Date.new(2016,12,31) << 2) #=> 2016-10-31
```

-----------------------------------------------------------------

**A48:** (D)

[Time.strptime](https://docs.ruby-lang.org/en/3.1/Time.html#method-c-strptime) parses the given string with the given template, and creates a Time object.

[Time.parse](https://docs.ruby-lang.org/en/3.1/Time.html#method-c-parse) parses the given string using a heuristic, and doesn't take a template.

-----------------------------------------------------------------

**A49:** (A)

The `Singleton` module implements [the Singleton pattern](http://w3sdesign.com/?gr=c05&ugr=proble).

`include Singleton` adds the class method `instance`, which returns the only instance of the class.

-----------------------------------------------------------------

**A50:** (C)

The `Forwardable` module provides delegation of specified methods to a designated object, using [Forwardable.def_delegator](https://docs.ruby-lang.org/en/3.1/Forwardable.html#method-i-def_delegator)

-----------------------------------------------------------------

