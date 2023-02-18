# Ruby Association Certified Ruby Examination Gold Sample Questions

[Answers](gold_answers.md)

**Q1. Assume that the following code must have the stated execution result:** 

```ruby
class Stack
  def initialize
    @contents = []
  end

  __(1)__
end

stack = Stack.new
stack.push("foo")
stack.push("bar")
p stack.pop

[Execution Result]
"bar"
```

**Which option can be inserted into `__(1)__`? (Choose two.)**

*A:*
```ruby
[:push, :pop].each do |name|
  define_method(name) do |*args|
    @contents.send(name, *args)
  end
end
```

*B:*
```ruby
for name in [:push, :pop]
  define_method(name) do |*args|
    @contents.send(name, *args)
  end
end
```

*C:*
```ruby
[:push, :pop].each do |name|
  instance_eval(<<-EOF)
    def #{name}(*args)
      @contents.send(:#{name}, *args)
    end
  EOF
end
```

*D:*
```ruby
[:push, :pop].each do |name|
  class_eval(<<-EOF)
    def #{name}(*args)
      @contents.send(:#{name}, *args)
    end
  EOF
end
```

-----------------------------------------------------------------

**Q2. Given the following code:**

```ruby
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

**Q3. Assume that the following code must have the stated execution result:** 

```ruby
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

**Q4. Assume that the following code must have the stated execution result:** 

```ruby
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

**Q5. Assume that the following code must have the stated execution result:** 

```ruby
def round(n, __(1)__)
  n.round(__(1)__)
end

p round(2.5, half: :even)

[Execution Result]
2
```

**Which option can be inserted into `__(1)__`? (Choose two.)**

*A:* `*`

*B:* `**`

*C:* `..`

*D:* `...`

-----------------------------------------------------------------

**Q6. Given the following code:**

```ruby
class A
  def foo
    self.bar
  end

  private

  def bar
    "baz"
  end

  def self.bar
    "quux"
  end
end

puts A.new.foo
```

**Which option corresponds to the execution result? (Choose one.)**

*A:*
```
baz
```

*B:*
```
quux
```

*C:*
A syntax error occurs

*D:*
An exception is raised

-----------------------------------------------------------------

**Q7. Assume that the following code must have the stated execution result.** 

```ruby
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

**Q8: Assume that the following code must have the stated execution result.**

```ruby
__(1)__

p multiply_by(4) { 2 + 3 }

[Execution Result]
20
```

**Which of the following options can be inserted into `__(1)__`? (Choose two.)**

*A:*

```ruby
def multiply_by(n, &block)
  n * block.call
end
```

*B:*

```ruby
def multiply_by(n, &block)
  n * block
end
```

*C:*

```ruby
def multiply_by(n)
  n * yield
end
```

*D:*

```ruby
def multiply_by(n)
  n * yield.call
end
```

-----------------------------------------------------------------

**Q9: Assume that the following code must have the stated execution result.** 

```ruby
__(1)__

p sum { |e| e << 1 << 5 << 7 }

[Execution Result]
13
```

**Which of the following options can be inserted into `__(1)__`? (Choose two.)**

*A:*

```ruby
def sum(&block)
  array = []
  
  block(array)
  
  array.reduce(:+)
end
```

*B:*

```ruby
def sum(&block)
  array = []
  
  block.call(array)
  
  array.reduce(:+)
end
```

*C:*

```ruby
def sum
  array = []
  
  yield(array)
  
  array.reduce(:+)
end
```

*D:*

```ruby
def sum
  array = []
  
  yield.call(array)
  
  array.reduce(:+)
end
```

-----------------------------------------------------------------

**Q10. Given the following code:** 

```ruby
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

**Q11. Assume that the following code must have the stated execution result:**

```ruby
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

**Q12. Assume that the following code must have the stated execution result:**

```ruby
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

**Q13. Assume that the following code must have the stated execution result.**

```ruby
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

**Q14. Assume that the following code must have the stated execution result:**

```ruby
__(1)__
  x + y
end

p add(1, 2)

[Execution Result]
3
```

**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:* `add = ->(x, y) do`

*B:* `add = lambda do |x, y|`

*C:* `add = Proc.new do |x, y|`

*D:* `define_method(:add) do |x, y|`

-----------------------------------------------------------------

**Q15. Given the following code:**

```ruby
def reader_method(s)
  <<~EOF
    def #{s}
      @#{s}
    end
  EOF
end

print reader_method("foo")
```

**Which option corresponds to the execution result? (Choose one.)**

*A:*
```ruby
    def foo
      @foo
    end
```

*B:*
```ruby
  def foo
    @foo
  end
```

*C:*
```ruby
def foo
  @foo
end
```

*D:*
A syntax error occurs.

-----------------------------------------------------------------

**Q16. Assume that the following code must have the stated execution result:**

```ruby
obj = Object.new

def obj.hello
  puts "Hi!"
end

copy = __(1)__

copy.hello

[Execution Result]
Hi!
```

**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:* `Marshal.load(Marshal.dump(obj))`

*B:* `obj.dup`

*C:* `obj.clone`

*D:* `obj.copy`

-----------------------------------------------------------------

**Q17. Assume that the following code must have the stated execution result.**

```ruby
class ShoppingList
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def __(1)__
    @items.map { |e| "- #{e}" }.join("\n")
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

**Q18. Assume that the following code must have the stated execution result.**

```ruby
class ShoppingList
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def __(1)__
    "ShoppingList:\n  @items: #{@items.inspect}"
  end
end

list = ShoppingList.new

list.add_item("Milk")
list.add_item("Bread")
list.add_item("Eggs")

p list

[Execution Result]
ShoppingList:
  @items: ["Milk", "Bread", "Eggs"]
```

**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:* `to_s`

*B:* `to_str`

*C:* `inspect`

*D:* `p`

-----------------------------------------------------------------

**Q19. Assume that the following code must have the stated execution result.**

```ruby
p __(1)__.flat_map {|z|
  (1..z).flat_map {|x|
    (x..z).select {|y|
      x**2 + y**2 == z**2
    }.map {|y|
      [x, y, z]
    }
  }
}.take(3).to_a

[Execution Result]
[[3, 4, 5], [6, 8, 10], [5, 12, 13]]
```

**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:* `(1..-1).delay`

*B:* `(1..).delay`

*C:* `(1..-1).lazy`

*D:* `(1..).lazy`

-----------------------------------------------------------------

**Q20. Assume that the following code must have the stated execution result.**

```ruby
ary = ["foo", "bar", nil, "baz"]

p ary.__(1)__ { |i|
  i&.upcase
}

[Execution Result]
["FOO", "BAR", "BAZ"]
```

**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:* `map`

*B:* `filter_map`

*C:* `collect`

*D:* `collect_compact`

-----------------------------------------------------------------

**Q21. Given the following code:**

```ruby
a, b, *c = ["apple", "banana", "carrot", "daikon"]

p c
```

**Which option corresponds to the execution result?**

*A:* `["apple", "banana", "carrot", "daikon"]`

*B:* `"carrot"`

*C:* `["carrot"]`

*D:* `["carrot", "daikon"]`

-----------------------------------------------------------------

**Q22: Which code produces the following execution result? (Choose one.)**

```ruby
[Execution Result]
[["apple", "banana", "carrot"]]
```

*A:*
```ruby
def fx(*args)
  p(args)
end
fx(*["apple", "banana", "carrot"])
```

*B:*
```ruby
def fx(*args)
  p(args)
end
fx(["apple", "banana", "carrot"])
```

*C:*
```ruby
def fx(*args)
  p(args)
end
fx("apple", "banana", "carrot")
```

*D:*
```ruby
def fx(*args)
  p(*args)
end
fx(["apple", "banana", "carrot"])
```

-----------------------------------------------------------------

**Q23. Assume that the following code must have the stated execution result.**

```ruby
p ["foo", "bar", "baz"].map { __(1)__.upcase }

[Execution Result]
["FOO", "BAR", "BAZ"]
```

**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:* `_1`

*B:* `$1`

*C:* `$_`

*D:* `it`

-----------------------------------------------------------------

**Q24. Given the following code:**

```ruby
def fx(a:, b: "apple")
  p a
  p b
end

fx(b: "banana")
```

**Which option corresponds to the execution result?**

*A:*
```ruby
nil
apple
```

*B:*
```ruby
nil
banana
```

*C:*
A syntax error occurs

*D:*
An exception is raised

-----------------------------------------------------------------

**Q25. Assume that the following code must have the stated execution result.**

```ruby
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

**Q26: Assume that the following code must have the stated execution result.**

```ruby
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

**Q27. Given the following code:**

```ruby
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

*D:* A syntax error occurs

-----------------------------------------------------------------

**Q28. Assume that the following code must have the stated execution result.**

```ruby
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

**Q29. Assume that the following code must have the stated execution result.**

```ruby
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

**Q30. Assume that the following code must have the stated execution result.**

```ruby
begin
  __(1)__
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

**Q31. Given the following code:**

```ruby
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
```ruby
Bare rescue
```

*B:* 
```ruby
StandardError rescue
```

*C:* 
```ruby
AnError rescue
```

*D:* 
```ruby
Exception rescue
```

*E:*
```ruby
AnError rescue
Exception rescue
```

-----------------------------------------------------------------

**Q32. Given the following code:**

```ruby
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
```ruby
Bare rescue
```

*B:* 
```ruby
StandardError rescue
```

*C:* 
```ruby
AnError rescue
```

*D:* 
```ruby
Exception rescue
```

*E:*
```ruby
Exception rescue
AnError rescue
```

-----------------------------------------------------------------

**Q33. Given the following code:**

```ruby
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

**Q34. Given the following code:**

```ruby
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

**Q35. Given the following code:**

```ruby
def greeting
  "hello"
ensure
  puts "Ensure called!"

  "hi"
end

puts greeting
```

**Which option corresponds to the execution result? (Choose one.)**

*A:*

```ruby
hello
```

*B:*

```ruby
hi
```


*C:*

```ruby
Ensure called!
hello
```

*D:*

```ruby
Ensure called!
hi
```

-----------------------------------------------------------------

**Q36. Given the following code:**

```ruby
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

```ruby
true
true
```

*B:*
```ruby
true
false
```

*C:*
```ruby
false
true
```

*D:*
```ruby
false
false
```

-----------------------------------------------------------------

**Q37. Given the following code:**

```ruby
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
```ruby
Identity
Identity
```

*B:*
```ruby
Class
Identity
```

*C:*
```ruby
Object
Identity
```

*D:*
```ruby
Class
Object
```

-----------------------------------------------------------------

**Q38. Given the following code:**

```ruby
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

**Q39: What is the direct superclass of the `Class` class? (choose one.)**

*A:* `Object`

*B:* `Module`

*C:* `BasicObject`

*D:* `Class`

-----------------------------------------------------------------

**Q40. Given the following code:**

```ruby
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

**Q41. Assume that the following code must have the stated execution result.**

```ruby
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

*A:* `Mixin.greet`

*B:* `SomeClass.new.greet`

*C:* `SomeClass.greet`

*D:* `Mixin.new.greet`

-----------------------------------------------------------------

**Q42. Assume that the following code must have the stated execution result.**

```ruby
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

*A:* `Mixin.greet`

*B:* `SomeClass.new.greet`

*C:* `SomeClass.greet`

*D:* `Mixin.new.greet`

-----------------------------------------------------------------

**Q43. Assume that the following code must have the stated execution result.**

```ruby
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

```ruby
public :greet
```

*B:*

```ruby
protected :greet
```

*C:*

```ruby
def greet
  super
end
```

*D:*

```ruby
alias_method :original_greet, :greet

def greet
  original_greet
end
```

-----------------------------------------------------------------

**Q44. Assume that the following code must have the stated execution result:**

```ruby
h = [1, 2, 3]
case h
__(1)__ [x, y]
  p [:two, x, y]
__(1)__  [x, y, z]
  p [:three, x, y, z]
end

[Execution Result]
[:three, 1, 2, 3]
```

**Which of the following options can be inserted into `__(1)__`? (Choose one.)**

*A:* `when`

*B:* `in`

*C:* `if`

*D:* `=>`

-----------------------------------------------------------------

**Q45. Assume that the following code must have the stated execution result:**

```ruby
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

**Q46. Given the following code:**

```ruby
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

```ruby
true
false
true
false
true
```

*B:*
```ruby
false
true
true
false
false
```

*C:*
```ruby
false
false
false
true
true
```

*D:*
```ruby
false
false
false
false
false
```

*E:*
An exception is raised.

-----------------------------------------------------------------

**Q47. Given the following code:**

```ruby
require "date"

date = Date.new(2000, 2, 24)

puts(date << 12)
puts(date >> 12)
```

**Which option corresponds to the execution result? (Choose one.)**

*A:*
```ruby
2000-02-12
2000-03-07
```

*B:*
```ruby
2000-03-07
2000-02-12
```

*C:*
```ruby
1999-02-24
2001-02-24
```

*D:*
```ruby
1988-02-24
2012-02-24
```

-----------------------------------------------------------------

**Q48. Assume that the following code must have the stated execution result:**

```ruby
require "time"

t = Time.__(1)__("00000024021993", "%S%M%H%d%m%Y")
puts t.iso8601

[Execution Result]
1993-02-24T00:00:00+09:00
```

**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:* `format`

*B:* `parse`

*C:* `strftime`

*D:* `strptime`

-----------------------------------------------------------------

**Q49. Assume that the following code must have the stated execution result:**

```ruby
require "singleton"

class Foo
  __(1)__
end

x = Foo.instance
y = Foo.instance
p x.equal?(y)

[Execution Result]
true
```

**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:* `include Singleton`

*B:* `extend Singleton`

*C:* `using Singleton`

*D:* `singletonize`

-----------------------------------------------------------------

**Q50. Assume that the following code must have the stated execution result:**

```ruby
require 'forwardable'

class List
  extend Forwardable

  def initialize
    @contents = []
  end

  __(1)__ :@contents, :push
  __(1)__ :@contents, :[]
end

list = List.new
list.push("a")
list.push("b")
list.push("c")
p list[1]

[Execution Result]
"b"
```

**Which option can be inserted into `__(1)__`? (Choose one.)**

*A:* `forward`

*B:* `def_forwarder`

*C:* `def_delegator`

*D:* `define`

-----------------------------------------------------------------

