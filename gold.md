# Ruby Association Certified Ruby Examination Gold Sample Questions

**Q1. Assume that the following code must have the stated execution result.**

```
__(1)__
x.each_line { |line| puts line }

[Execution Result]
apple
banana
```

**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:*
```
require "stringbuffer"
x = StringBuffer.new("apple\nbanana\n")
```

*B:*
```
require "stringio"
x = StringIO.new("apple\nbanana\n")
```

*C:*
```
require "strio"
x = StrIO.new("apple\nbanana\n")
```

*D:*
```
require "mockio"
x = MockIO.new("apple\nbanana\n")
```

-----------------------------------------------------------------

**A1:** (B)

The `StringIO` object (from the standard library) provides an IO-like object that operates on strings rather than file/network/stdio streams. This object can be useful for testing code that relies on I/O operations.

-----------------------------------------------------------------

**Q2. Given the following code:**

```
module I
end

module P
end

class C
  include I
  prepend P
end

p C.ancestors
```

**Which option corresponds to the execution result? (Choose one.)**

*A:* `[P, C, I, Object, Kernel, BasicObject]`

*B:* `[C, P, I, Object, Kernel, BasicObject]`

*C:* `[C, I, Object, Kernel, BasicObject, P]`

*D:* `[P, I, C, Object, Kernel, BasicObject]`

-----------------------------------------------------------------

**A2:** (A)

- A class that does not explicitly specify its parent class automatically inherits from `Object`, which mixes in the `Kernel` module and inherits from `BasicObject`.

- Modules mixed into a class via `include` appear between that class and its parent class in the ancestry chain.

- Modules mixed into a class via `prepend` appear before that class in the ancestry chain.

Using `prepend` is only necessary when you either want to override some definition in the class you are extending with a module mixin. Otherwise, `include` works fine, even for overriding functionality of modules that have already been included.

-----------------------------------------------------------------

**Q3. Assume that the following code must have the stated execution result:** 

```
x = __(1)__
p x + 1

[Execution Result]
(4/3)
```

**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:* `1 / 3r`

*B:* `1 / 3R`

*C:* `1 / %r(3)`

*D:* `1 / 3`

-----------------------------------------------------------------

**A3:** (A)

Suffixing a literal number with `r` tells Ruby to construct a `Rational` object. The same result can be achieved in a few other ways as well (e.g. `1 / 3.to_r` or `Rational(1, 3)`)

-----------------------------------------------------------------

**Q4. Assume that the following code must have the stated execution result:** 

```
p ("aaaaaa".."zzzzzz").lazy.select { |e| e.end_with?("f") }.__(1)__

[Execution Result]
["aaaaaf", "aaaabf", "aaaacf"]
```

**Which of the following options can be inserted into `__(1)__`? (Choose all that apply.)**

*A:* `first(3)`

*B:* `take(3)`

*C:* `take(3).force`

*D:* `first(3).force`

-----------------------------------------------------------------

**A4:** (A), (C)

The `take()` method is defined by `Enumerator::Lazy`, and so execution is deferred until enumeration is forced in some way. (The return value of this method will be an `Enumerator::Lazy` object)

An `Enumerator::Lazy` object inherits from `Enumerator` and also includes the `Enumerable` module.

Calling an `Enumerable` method that isn't overridden by `Enumerator::Lazy` will force enumeration. This is why calling `first(3)` does not require (or allow) calling the `.force` method afterwards: Its return value is an `Array`, not an `Enumerable::Lazy` object, and the operation is executed immediately.

Note that the `force()` method on `Enumerator::Lazy` is just an alias for `Enumerable#to_a`.

-----------------------------------------------------------------

**Q5: Given the following code:**

```
arr = []

f = Fiber.new {
  arr << "A"
  Fiber.yield "B"
  Fiber.yield "C"
}

arr << "X"
arr << f.resume
arr << "Y"

p arr
```

**Which option corresponds to the execution result? (Choose one.)**

*A:* `["A", "B", "C", "X", "Y"]`

*B:* `["X", "A", "B", "Y"]`

*C:* `["X", "A", "B", "C", "Y"]`

*D:* `["X", "A", nil, "Y"]` 

-----------------------------------------------------------------

**A5:** (B)

A `Fiber` is used to implement coroutine-like functionality which allows for partially completing a computation before returning control back the the caller, and then resuming later to compute the next result.

The block provided when initializing a `Fiber` is not executed immediately, but instead gets run whenever `Fiber#resume` is called. Execution will continue until `Fiber.yield` is called or until the end of the block is reached, and then the result will be returned.

If the fiber yields, then the next call to `Fiber#resume` would continue execution immediately after that instruction in the block.

-----------------------------------------------------------------

**Q6. Assume that the following code must have the stated execution result:**

```
class A
  def foo
    __1__
  end

  private

  def bar
    "baz"
  end
end

p A.new.foo

[Execution Result]
"baz"
```

**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:* `bar`

*B:* `self.bar`

*C:* `A.new.bar`

*D:* None of the above.

-----------------------------------------------------------------

**A6:** (A)

Private methods can only be invoked in functional style from within a class definition.

Calling `self.some_method()` attempts to invoke a method via an object's external API, therefore it will raise an exception if `some_method()` is a private method.

-----------------------------------------------------------------

**Q7. Assume that the following code must have the stated execution result.** 

```
class Greeter
  class << self
    def hello
      puts "Hello there!"
    end
  end
end

__(1)__

[Execution Result]
Hello there!
```

**Which of the following options can be inserted into `__(1)__`? (Choose two.)**

*A:* `Greeter.new.hello`

*B:* `Greeter.hello`

*C:* `Greeter.new.class.hello`

*D:* `Greeter.class.new.hello`

---------------------------------------------------------------

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

**Q8: Assume that the following code must have the stated execution result.**

```
__(1)__

p multiply_by(4) { 2 + 3 }

[Execution Result]
20
```

**Which of the following options can be inserted into `__(1)__`? (Choose two.)**

*A:*

```
def multiply_by(n, &block)
  n * block.call
end
```

*B:*

```
def multiply_by(n, &block)
  n * block
end
```

*C:*

```
def multiply_by(n)
  n * yield
end
```

*D:*

```
def multiply_by(n)
  n * yield.call
end
```

-----------------------------------------------------------------

**A8:** (A) and (C)

Every method in Ruby may accept a block, whether it is explicitly specified in the method signature or not.

The `yield` keyword is used for calling a block implicitly.
The `&block` syntax is used for converting the block into a `Proc` object, which can then be invoked via `call()`, or passed along to some other method, etc.

-----------------------------------------------------------------

**Q9: Assume that the following code must have the stated execution result.** 

```
__(1)__

p sum { |e| e << 1 << 5 << 7 }

[Execution Result]
13
```

**Which of the following options can be inserted into `__(1)__`? (Choose two.)**

*A:*

```
def sum(&block)
  array = []
  
  block(array)
  
  array.reduce(:+)
end
```

*B:*
```
def sum(&block)
  array = []
  
  block.call(array)
  
  array.reduce(:+)
end
```

*C:*
```
def sum
  array = []
  
  yield(array)
  
  array.reduce(:+)
end
```

*D:*
```
def sum
  array = []
  
  yield.call(array)
  
  array.reduce(:+)
end
```

-----------------------------------------------------------------

**A9:** (B) and (C)

- When invoking blocks with arguments via `yield`, functional style syntax is used.
- When invoking blocks via a `Proc` object, arguments are passed to the `call()` method.

-----------------------------------------------------------------

**Q10. Given the following code:** 

```
class A
  @@x = 1
end

class B < A
  def self.x
    @@x
  end
end

class C < A
  def self.inc
    @@x += 1
  end
end

C.inc
p B.x
```

**Which option corresponds to the execution result? (Choose one.)**

- *A:* `1`

- *B:* `2`

- *C:* `3`

- *D:* An exception is raised

-----------------------------------------------------------------

**A10:** (B)

Class variables are shared not just within a single class, but also downwards through the inheritance hierachy. So when `A` defines `@@x`, that variable is shared with its child classes `B` and `C`, and all three reference the same variable.

Class variables are one of the more complex features of Ruby, and so this study guide does not cover anything beyond their most basic behaviors.

-----------------------------------------------------------------

**Q11. Assume that the following code must have the stated execution result:**

```
words = ["apple", "banana", "cabbage"]
pop = Proc.new { words.pop }
3.times{ puts __(1)__ }

[Execution Result]
cabbage
banana
apple
```

**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:* `pop.load`

*B:* `pop.send`

*C:* `pop.run`

*D:* `pop.call`

*E:* `pop.eval`

-----------------------------------------------------------------

**A11:** (D)

A `Proc` object encapsulates a block and allows it to be called later via `Proc#call`. Each `Proc` object forms a closure, which binds the block to the local variables that were in scope wherever the `Proc` is defined. 

-----------------------------------------------------------------

**Q12. Assume that the following code must have the stated execution result:**

```
words = ["apple", "banana", "cabbage"]
pop = __(1)__{ words.pop }
3.times{ puts pop.call }

[Execution Result]
cabbage
banana
apple
```

**Which of the following options can be inserted into `__(1)__`? (Choose two.)**

*A:* `Proc.new`

*B:* `Block.new`

*C:* `lambda`

*D:* `Lambda.new`

-----------------------------------------------------------------

**A12:** (A) and (C)

Although `Proc.new` and `lambda` each create a `Proc` object, they are not identical to one another in behavior. 

- A `Proc` generated via `lambda` is strict about its accepted arguments, whereas an ordinary `Proc` will ignore extra unused arguments. 

- A `return` call from within a `lambda` returns from the lambda itself, whereas a `return` call from an ordinary `Proc` object will return from the method that invoked the block.

-----------------------------------------------------------------

**Q13. Assume that the following code must have the stated execution result.**

```
add = __(1)__
puts add.call("hello")

[Execution Result]
HELLO
```

**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:* `->(e) { e.upcase }`

*B:* `\(e) -> { e.upcase }`

*C:* `-> { (e) e.upcase }`

*D:* `-> { |e| e.upcase }`

-----------------------------------------------------------------

**A13:** (A)

The `->(...) { }` (lambda literal) syntax is a shorthand notation equivalent to `lambda { |...| }`.

-----------------------------------------------------------------

**Q14. Assume that the following code must have the stated execution result:**

```
old_data = [1,2,3]
old_data.freeze

new_data = old_data.__(1)__

new_data << 4

p new_data

[Execution Result]

[1,2,3,4]
```

**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:* `dup`

*B:* `clone`

*C:* `copy`

*D:* None of the above. There is no way to make this code work.

-----------------------------------------------------------------

**A14:** (A)

The frozen status of an object is preserved by `clone`, whereas `dup` will create an unfrozen shallow copy of an object that can be modified.

-----------------------------------------------------------------

**Q15. Given the following code:**

```
original = [[1,2],[3,4]]

copy = original.dup

original[0][0] = 42

p copy
```

**Which option corresponds to the execution result? (Choose one.)**

- *A:* `[[1,2],[3,4]]`
- *B:* `[[42,2],[3,4]]`
- *C:* `[[42],[3,4]]`
- *D:* A runtime error occurs.

-----------------------------------------------------------------

**A15:** (B)

Both `Object#dup` and `Object#clone` produce shallow copies. In the case of an `Array`, this means that the array itself is copied, but the objects within the array are not. So in this specific example `original[0]` and `copy[0]` both still reference the same object.

One convention that can be used for creating deep copies in Ruby is to serialize and then deserialize an object, using the `Marshal` core class, e.g. `copy = Marshal.load(Marshal.dump(original))`.

-----------------------------------------------------------------

**Q16. Assume that the following code must have the stated execution result:**

```
obj = Object.new

def obj.hello
  puts "Hi!"
end

copy = __(1)__

copy.hello

[Execution Result]
Hi!
```

**Which option can be inserted `__(1)__` ? (Choose one.)**

*A:* `Marshal.load(Marshal.dump(obj))`

*B:* `obj.dup`

*C:* `obj.clone`

*D:* `obj.copy`

-----------------------------------------------------------------

**A16:** (C)

Also note that:

- `Object#dup` does not copy an object's singleton methods.
- `Marshal.dump` is unable to serialize objects that have singleton methods defined on them.
- There is no `Object#copy` method.

-----------------------------------------------------------------

**Q17. Assume that the following code must have the stated execution result.**

```
class ShoppingList
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def __(1)__
    @items.map { |e| "- #{e} " }.join("\n")
  end
end

list = ShoppingList.new

list.add_item("Milk")
list.add_item("Bread")
list.add_item("Eggs")

puts list

[Execution Result]
- Milk
- Bread
- Eggs
```

**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:* `to_s`

*B:* `to_str`

*C:* `inspect`

*D:* `puts`

-----------------------------------------------------------------

**A17:** (A)

Many Ruby methods (including `Kernel#puts`) call `to_s` in order to convert objects into a string representation. The default implementation of `Object#to_s` produces simple, generic output which looks like this: 

`#<ShoppingList:0x007fb651918610>`

When the `to_s` method is overidden in other objects, it can be used to provide a better string representation of the object, as shown in this question.

-----------------------------------------------------------------

**Q18. Assume that the following code must have the stated execution result.**

```
class ShoppingList
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def __(1)__
    "ShoppingList (##{object_id})\n  @items: #{@items.inspect}"
  end
end

list = ShoppingList.new

list.add_item("Milk")
list.add_item("Bread")
list.add_item("Eggs")

p list

[Execution Result]
ShoppingList (#70338683731980)
  @items: ["Milk", "Bread", "Eggs"]
```

**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:* `to_s`

*B:* `to_str`

*C:* `inspect`

*D:* `p`

-----------------------------------------------------------------

**A18:** (C)

The `Kernel#p` method calls `inspect` on its arguments in order to produce strings that can be used for debugging purposes. The default functionality of `Object#inspect` lists provides basic useful information, but the output can be customized by overriding the method in specific classes or objects.

-----------------------------------------------------------------

**Q19. Which of the following statements is true? (Choose one.)**

*A:* `Kernel#puts` calls `to_str` on its arguments to produce a string representation.

*B:* `Kernel#p` calls `to_str` on its arguments to produce a string representation.

*C:* A default implementation of `to_str` is provided by Ruby's `Object` class

*D:* The `to_str` method is meant to be implemented only by objects that can behave similarly to `String` instances.

-----------------------------------------------------------------

**A19:** (D)

The `to_str` method is rarely implemented in practice, because it is only useful for situations in which you have an object that closely maps to Ruby's `String` concept, but is not a `String` itself. So while this method might be implemented by certain low-level data structures, it is not meant to be used for similar purposes to what `to_s` and `inspect` are used for.

-----------------------------------------------------------------

**Q20. Given the following code:**

```
a, b, c = ["apple", "banana", "carrot", "daikon"]

p c
```

**Which option corresponds to the execution result?**

*A:* `["apple", "banana", "carrot", "daikon"]`

*B:* `"carrot"`

*C:* `["carrot"]`

*D:* `["carrot", "daikon"]`

-----------------------------------------------------------------

**A20: (B)**

When an array is used on the right hand side of a parallel assignment statement, it is expanded as much as needed to map rvalues to the lvalues listed on the left hand side. This means that the number of variables on the left hand side does not need to be equal to the the length of the array.

-----------------------------------------------------------------

**Q21. Given the following code:**

```
a, b, *c = ["apple", "banana", "carrot", "daikon"]

p c
```

**Which option corresponds to the execution result?**

*A:* `["apple", "banana", "carrot", "daikon"]`

*B:* `"carrot"`

*C:* `["carrot"]`

*D:* `["carrot", "daikon"]`

-----------------------------------------------------------------

**A21: (D)**

The splat operator (`*`) can be used to place all remaining rvalues into an array and assign them to a single variable.

-----------------------------------------------------------------

**Q22: Which code produces the following execution result? (Choose one.)**

```
[Execution Result]
[["apple", "banana", "carrot"]]
```

*A:*
```
def fx(*args)
  p(args)
end
fx(*["apple", "banana", "carrot"])
```

*B:*
```
def fx(*args)
  p(args)
end
fx(["apple", "banana", "carrot"])
```

*C:*
```
def fx(*args)
  p(args)
end
fx("apple", "banana", "carrot")
```

*D:*
```
def fx(*args)
  p(*args)
end
fx(["apple", "banana", "carrot"])
```

-----------------------------------------------------------------

**A22:** (B)

The splat operator (`*`) when used with a method parameter makes it so that all remaining arguments are wrapped up in an array and referred to by this one parameter. In answer *(B)* above, the `fx(*args)` method accepts zero or more arguments, and places them all within the `args` array. So when `fx(["apple", "banana", "carrot"])` is called, the single argument (an array) is placed inside of another array, so `args` refers to `[["apple","banana","carrot"]]`.

-----------------------------------------------------------------

**Q23. Given the following code:**

```
def add(x,y)
  x + y
end

__(1)__

[Execution Result]
5
```

**Which options can be inserted into `__(1)__`? (Choose two.)**

*A:* `p add(3,2)`

*B:* `p add(*[3,2])`

*C:* `p add([3,2])`

*D:* `p add(**[[3,2]])`

-----------------------------------------------------------------

**A23:** (A) and (B)

When the splat operator (`*`) is called on an array in a method call, the array is expanded and treated as an arguments list to be passed to the method.


-----------------------------------------------------------------

**Q24. Given the following code:**

```
def fx(a:, b: "apple")
  p a
  p b
end

fx(b: "banana")
```

**Which option corresponds to the execution result:**

*A:*
```
nil
apple
```

*B:*
```
nil
banana
```

*C:* A syntax error occurs

*D:* An exception is raised

-----------------------------------------------------------------

**A24:** (D)

When a required keyword argument is not specified, an `ArgumentError` is raised.

-----------------------------------------------------------------

**Q25. Assume that the following code must have the stated execution result.**

```
def add(x:, y:, **params)
  z = x + y

  params[:round] ? z.round : z
end

__(1)__

[Execution Result]
7
```

**Which option can be inserted into `__(1)__`? (Choose three.)**

*A:* `p add(x: 2.75, y: 5.25, round: true)`

*B:* `p add(x: 3.75, y: 3, round: true)`

*C:* `options = {:round => true}; p add(x: 3.75, y: 3, **options)`

*D:* `p add(x: 3, y: 4)`

*E:* `p add(x: 7)`

-----------------------------------------------------------------

**A25:**  (B), (C) and (D)

When working with methods that use keyword parameters, the `**` operator can be used to capture any keywords which were not explicitly specified into an optional `Hash`.

The `**` operator can also be used when calling a method to convert a hash into a keyword arguments list.

-----------------------------------------------------------------

**Q26: Assume that the following code must have the stated execution result.**

```
class Speaker
  @message = "Hello!"

  class << self
    @message = "Howdy!"

    def speak
      @message
    end
  end
end

__(1)__

[Execution Result]
Hello!
```

**Which options can be inserted into `__(1)__`? (Choose two.)**

*A:* `puts Speaker.speak`

*B:* `puts Speaker.singleton_class.speak`

*C:* `puts Speaker.instance_variable_get(:@message)`

*D:* `puts Speaker.singleton_class.instance_variable_get(:@message)`

-----------------------------------------------------------------

**A26:** (A) and (C)

Because classes are objects in Ruby, it is possible to define class instance variables.

All objects in Ruby also have a *singleton class* associated with them, even class objects.

In this example, there is an instance variable named `@message`on the `Speaker` class as well as on the singleton class of `Speaker`. These are two seperate variables.

The singleton method `Speaker.speak` is evaluated in the context of the `Speaker` class, and so `@message` refers to the instance variable defined within the `Speaker` class definition, and not the instance variable defined within the singleton class of `Speaker`.

-----------------------------------------------------------------

**Q27. Given the following code:**

```
class Speaker
  @message = "Hello!"

  class << self
    @message = "Howdy!"
  end
end

class << Speaker
  p @message
end
```

**Which option corresponds to the execution result? (Choose one.)**

*A:* `"Hello!"`

*B:* `"Howdy!"`

*C:* `nil`

*D:* A syntax error is raised

-----------------------------------------------------------------

**A27:** (B)

In this example `class << Speaker` reopens the singleton class of `Speaker`, and within that context `@message` refers to an instance variable defined directly on that singleton class object.

-----------------------------------------------------------------

**Q28. Assume that the following code must have the stated execution result.**

```
def x
  puts "x"
end

def y
  puts "y"
  throw :done
end

def z
  puts "z"
end


__(1)__ do
  x
  y
  z
end

puts "done!"

[Execution Result]
x
y
done!

```

**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:* `try`

*B:* `catch`

*C:* `catch :done`

*D:* `rescue`

-----------------------------------------------------------------

**A28:** (C)

Within a `catch` block, code executes normally until a `throw` statement is executed. Then if the symbol passed via `throw` matches the `catch` symbol, Ruby terminates the block and continues running whatever follows it. 

If a `catch` block does not match the `throw`, Ruby will continue in an inside-out fashion through any nested `catch` blocks until it finds one that matches the thrown symbol or reaches the top-level, where an uncaught `throw` will cause an exception to be raised.

-----------------------------------------------------------------

**Q29. Assume that the following code must have the stated execution result.**

```
letters = catch(:done) do
  ("a".."z").each do |a|
    ("a".."z").each do |b|
      ("a".."z").each do |c|
        if a < b && b < c
          __(1)__
        end
      end
    end
  end
end

puts letters.join

[Execution Result]
abc
```
**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:* `throw [a,b,c]`

*B:* `throw [a,b,c], :done`

*C:* `throw :done, [a,b,c]`

*D:* `raise :done, [a,b,c]`

-----------------------------------------------------------------

**A29:** (C)

When the two argument form of `throw` is used, the second argument is returned from the matching `catch` call.

-----------------------------------------------------------------


**Q30. Assume that the following code must have the stated execution result.**

```
begin
  raise __(1)__
rescue
  puts "OK"
end

[Execution Result]
OK
```

**Which option can be inserted into `__(1)__`? (Choose two.)**

*A:* `raise StandardError`

*B:* `raise Exception`

*C:* `raise ArgumentError`

*D:* `raise ScriptError`

-----------------------------------------------------------------

**A30:** (A) and (C)

The ancestry chain for each of the classes listed in this question is as follows:

```
ArgumentError < StandardError < Exception

ScriptError < Exception
```

If `rescue` is called without a specific error class, it will catch `StandardError` and its descendents by default. Most exceptions in core Ruby are descendents of `StandardError`, but there are some that are not usually meant to be rescued which exist in other class hierarchies which descend directly from the `Exception` base clase.

-----------------------------------------------------------------

**Q31. Given the following code:**

```
AnError = Class.new(Exception)

begin
  raise AnError
rescue
  puts "Bare rescue"
rescue StandardError
  puts "StandardError rescue"
rescue AnError
  puts "AnError rescue"
rescue Exception
  puts "Exception rescue"
end
```

**Which option corresponds to the execution result? (Choose one.)**

*A:*
```
Bare rescue
```

*B:* 
```
StandardError rescue
```

*C:* 
```
AnError rescue
```

*D:* 
```
Exception rescue
```

*E:*
```
AnError rescue
Exception rescue
```

-----------------------------------------------------------------

**A31:** (C)

A bare `rescue` statement matches `StandardError` and its descendents. As such, it will not match any exceptions which inherit from the `Exception` base class directly.

Within a single `begin/end` block, only the first matched `rescue` clause will be run, even if there are multiple clauses that match. 

-----------------------------------------------------------------

**Q32. Given the following code:**

```
AnError = Class.new(Exception)

begin
  raise AnError
rescue
  puts "Bare rescue"
rescue StandardError
  puts "StandardError rescue"
rescue Exception
  puts "Exception rescue"
rescue AnError
  puts "AnError rescue"  
end
```

**Which option corresponds to the execution result? (Choose one.)**

*A:*
```
Bare rescue
```

*B:* 
```
StandardError rescue
```

*C:* 
```
AnError rescue
```

*D:* 
```
Exception rescue
```

*E:*
```
Exception rescue
AnError rescue
```

-----------------------------------------------------------------

**A32:** (D)

Even though `rescue Exception` and `rescue AnError` both match the raised exception, in this example the `rescue Exception`  clause appears first in the block, and so that branch is executed and all the remaining `rescue` clauses that follow it are ignored.

-----------------------------------------------------------------

**Q33. Given the following code:**

```
begin
  "hello".world
rescue => ex
  p ex.class
end
```

**Which option corresponds to the execution result? (Choose one.)**

*A:* `StandardError`

*B:* `Exception`

*C:* `NameError`

*D:* `NoMethodError`

*E:* `ArgumentError`

-----------------------------------------------------------------

**A33:** (D)

The `=>` separator can be used within a `rescue` clause to define a variable that refers to an `Exception` object that corresponds to the specific exception that was raised.

-----------------------------------------------------------------

**Q34. Given the following code:**

```
CustomError = Class.new(StandardError)

def boom
  raise CustomError 
rescue
  raise
end

begin 
  boom
rescue => e
  p e.class
end
```

**Which option corresponds to the execution result? (Choose one.)**

*A:* `CustomError`

*B:* `StandardError`

*C:* `Exception`

*D:* `RuntimeError`

*E:* `SyntaxError`

-----------------------------------------------------------------

**A34:** (A)

When `raise` is called within a `rescue` branch without specifying an exception type, the raised exception type will match whatever exception was rescued.

When `raise` is called and there has not been any exceptions rescued in the current context, `RuntimeError` will be raised by default.

-----------------------------------------------------------------

**Q35. Given the following code:**

```
def greeting
  "hello"
ensure
  puts "Ensured called!"

  "hi"
end

puts greeting
```

**Which option corresponds to the execution result? (Choose one.)**

*A:*

```
hello
```

*B:*

```
hi
```


*C:*

```
Ensure called!
hello
```

*D:*

```
Ensure called!
hi
```

-----------------------------------------------------------------

**A35:** (C)

The `ensure` branch of a method (or begin/end block) is always run, whether an exception was raised or not. However, there is no implicit return value from an `ensure` branch, and so instead the implicit return value is set to the result of the expression that ran just before the `ensure` branch was executed.

-----------------------------------------------------------------

**Q36. Given the following code:**

```
class Identity
  def self.this_object
    self
  end
  
  def this_object
    self
  end
end

a = Identity.this_object
b = Identity.this_object

c = Identity.new.this_object
d = Identity.new.this_object

p a == b
p c == d
```

**Which option corresponds to the execution result? (Choose one.)**

*A:* 

```
true
true
```

*B:*
```
true
false
```

*C:*
```
false
true
```

*D:*
```
false
false
```

-----------------------------------------------------------------

**A36: (B)**

The `self` keyword always refers to the current object. Within a class method, `self` refers to an instance of a `Class` object that represents the current class. Within an instance method definition, `self` refers to a specific instance of the current class.

-----------------------------------------------------------------

**Q37. Given the following code:**

```
class Identity
  def self.this_object
    self.class
  end
  
  def this_object
    self
  end
end

p Identity.this_object.class
p Identity.new.this_object.class
```

**Which option corresponds to the execution result? (Choose one.)**

*A:*
```
Identity
Identity
```

*B:*
```
Class
Identity
```

*C:*
```
Object
Identity
```

*D:*
```
Class
Object
```

-----------------------------------------------------------------

**A37:** (B)

In class methods, `self` refers to an instance of the `Class` object.
In instance methods, `self` refers to whatever the currently instantiated object is.

-----------------------------------------------------------------

**Q38. Given the following code:**

```
module Mixin
  def this_object
    self
  end
end

class Identity
  include Mixin
end


p Identity.new.this_object.class
```

**Which option corresponds to the execution result? (Choose one.)**

*A:* `Mixin`

*B:* `Class`

*C:* `Object`

*D:* `Identity`

-----------------------------------------------------------------

**A38:** (D)

Even in complex ancestry chains including module mixins and class inheritance, `self` will always refer to receiving object within the current context. 

In this particular example, that means that even though the `this_object` is defined by the `Mixin` module, it is included into and called on an instance of the `Identity` class, and therefore `self` refers to that specific object.

-----------------------------------------------------------------

**Q39: What is the direct superclass of the `Class` class? (choose one.)**

*A:* `Object`

*B:* `Module`

*C:* `BasicObject`

*D:* `Class`

-----------------------------------------------------------------

**A39:** (B)

Even though the `Class` class is a subclass of `Module`, class objects cannot be used as mixins (i.e. you cannot use a `Class` object with `include`, `extend`, or `prepend`)

The class inheritance relationship between `Module` and `Class` in Ruby is mostly an implementation detail, as the two constructs have some overlapping functionality and purposes--but neither is a pure behavioral subtype of the other.

-----------------------------------------------------------------

**Q40. Given the following code:**

```
module Mixin
  def self.greet
    puts "Hello World!"
  end
end

class SomeClass
  include Mixin
end
```

**Which of the following statements is true? (Choose one.)**

*A:* `Mixin.greet` will print `Hello World!`, `SomeClass.greet` will raise an exception.

*B:* `Mixin.greet` will raise an exception, `SomeClass.greet` will print `Hello World!`.

*C:* Both `Mixin.greet` and `SomeClass.greet` will print `Hello World!`.

*D:* Both `Mixin.greet` and `SomeClass.greet` will raise an exception.

-----------------------------------------------------------------

**A40:** (A)

In this example, the `greet` method was defined on the `Mixin` module itself, rather than defined as a method that can be mixed into other objects.

(To see how to define methods that can both be mixed into objects and called directly on a module, look up information about Ruby's `module_function` feature, or the `extend self` convention.)

-----------------------------------------------------------------

**Q41. Assume that the following code must have the stated execution result.**

```
module Mixin
  def greet
    puts "Hello World!"
  end
end

class SomeClass
  extend Mixin
end

__(1)__

[Execution Result]
Hello World!
```

**Which of the following options can be inserted into `__(1)__`? (Choose one.)**

*A:* 
`Mixin.greet`

*B:* 
`SomeClass.new.greet`

*C:* 
`SomeClass.greet`

*D:* `Mixin.new.greet`

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

**Q42. Assume that the following code must have the stated execution result.**

```
module Mixin
  def greet
    puts "Hello World!"
  end
end

class SomeClass
  include Mixin
end

__(1)__

[Execution Result]
Hello World!
```

**Which of the following options can be inserted into `__(1)__`? (Choose one.)**

*A:* 
`Mixin.greet`

*B:* 
`SomeClass.new.greet`

*C:* 
`SomeClass.greet`

*D:* `Mixin.new.greet`

-----------------------------------------------------------------

**A42:** B

The `include` method mixes a module into a class so that its methods become available as instance methods.

-----------------------------------------------------------------

**Q43. Assume that the following code must have the stated execution result.**

```
class BaseClass
  private

  def greet
    puts "Hello World!"
  end
end

class ChildClass < BaseClass
  __(1)__
end


ChildClass.new.greet

[Execution Result]
Hello World!
```

**Which of the following options CANNOT be inserted into `__(1)__`? (Choose one.)**

*A:* 

```
public :greet
```

*B:*

```
protected :greet
```

*C:*

```
def greet
  super
end
```

*D:*

```
alias_method :original_greet, :greet

def greet
  original_greet
end
```

-----------------------------------------------------------------

**A43:** (B)

A `protected` method can only be called from within an instance of the same class, or one of its descendents.

-----------------------------------------------------------------

**Q44. Assume that the following code must have the stated execution result:**

```
class Upcaser
  def initialize(value)
    @value = value
  end

  def +(other)
    self.class.new(@value + other.value)
  end

  def to_s
    @value.upcase
  end

  attr_reader :value
  __(1)__
end

puts Upcaser.new("Hello") + Upcaser.new("World")

[Execution Result]
HELLOWORLD
```

**Which of the following options can be inserted into `__(1)__`? (Choose two.)**

*A:* `private :value`

*B:* `public :value`

*C:* `protected :value`

*D:* `static :value`

-----------------------------------------------------------------

**A44:** (B) and (C)

Note that:

- Private methods are not directly callable from another object, even if it is an instance of the same class.
- There is no `static` keyword in Ruby.

-----------------------------------------------------------------

**Q45. Assume that the following code must have the stated execution result:**

```
class Alphabet
  include Enumerable

  def initialize
    @letters = ("A".."Z").to_a
  end

  def __(1)__
    @letters.each do |e|
      yield e
    end
  end
end

set = Alphabet.new

p set.take(5)
p set.select { |e| e > "W" }

[Execution Result]
["A", "B", "C", "D", "E"]
["X", "Y", "Z"]
```

**Which of the following options can be inserted into `__(1)__`? (Choose one.)**

*A:* `all`

*B:* `each`

*C:* `to_a`

*D:* `to_ary`

*E:* `to_enum`

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

**Q46. Given the following code:**

```
class TShirt
  SIZES = [:xs, :s, :m, :l, :xl, :xxl]

  include Comparable

  def initialize(size)
    @size = size
  end
  
  attr_reader :size

  def <=>(other)
    SIZES.index(size) <=> SIZES.index(other.size)
  end
end

medium = TShirt.new(:m)
large  = TShirt.new(:l)

p medium == large
p medium <  large
p medium <= large
p medium >  large
p medium >= large
```
**Which option corresponds to the execution result? (Choose one.)**

*A:*

```
true
false
true
false
true
```

*B:*
```
false
true
true
false
false
```

*C:*
```
false
false
false
true
true
```

*D:*
```
false
false
false
false
false
```

*E:*
An exception is raised.

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

**Q47. Given the following code:**

```
require "date"

date = Date.new(2000, 2, 24)

puts(date << 12)
puts(date >> 12)
```

**Which option corresponds to the execution result? (Choose one.)**

*A:*
```
2000-02-12
2000-03-07
```

*B:*
```
2000-03-07
2000-02-12
```

*C:*
```
1999-02-24
2001-02-24
```

*D:*
```
1988-02-24
2012-02-24
```

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

**Q48. Assume that the following code must have the stated execution result:**

```
require "date"

d = Date.new(2000, 2, 18)
puts d __(1)__ 3

[Execution Result]
2000-02-21
```

**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:* `+`

*B:* `>>`

*C:* `<<`

*D:* `*`

-----------------------------------------------------------------

**A48:** (A)

The `+` operator is used to produce a new `Date` object that is *n days* later.
There is also a `-` operator which produces dates that are *n days* earlier.

-----------------------------------------------------------------

**Q49. Assume that the following code reads the contents of the example.com homepage over HTTP:**

```
__(1)__

puts open("http://example.com").read
```

**What option can be inserted into `__(1)__`? (Choose one.)**

*A:* `require "uri"`

*B:* `require "net/http"`

*C:* `require "open3"`

*D:* `require "open-uri"`

-----------------------------------------------------------------

**A49:** (D)

The `OpenURI` standard library extends the functionality of `Kernel#open` to allow treating HTTP-based resources as if they were a file. It is a wrapper around the low-level `Net::HTTP` standard library.

-----------------------------------------------------------------

**Q50. Assume that the following code must have the stated execution result:**

```
if __(1)__ == "Henry"
  puts "Hi Henry!!!"
else
  puts "Hello, stranger."
end

[Execution Result]
Hi Henry!!!
```

**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:* `ENV['EMPLOYEE_NAME']`

*B:* `$env['EMPLOYEE_NAME']`

*C:* `ENV[:EMPLOYEE_NAME]`

*D:* `$env[:EMPLOYEE_NAME]`

-----------------------------------------------------------------

**A50:** (A)

Environment variables are accessed via the `ENV` constant, which refers to a Hash-like object that represents both the variable names and their values as strings.

-----------------------------------------------------------------

Ruby Association doesn’t accept liability for damages incurred as a result of use this prep test.
