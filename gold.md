# Ruby Association Certified Ruby Examination Gold Sample Questions

[Answers](gold_answers.md)

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

**Q19. Which of the following statements is true? (Choose one.)**

*A:* `Kernel#puts` calls `to_str` on its arguments to produce a string representation.

*B:* `Kernel#p` calls `to_str` on its arguments to produce a string representation.

*C:* A default implementation of `to_str` is provided by Ruby's `Object` class

*D:* The `to_str` method is meant to be implemented only by objects that can behave similarly to `String` instances.

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

**Q39: What is the direct superclass of the `Class` class? (choose one.)**

*A:* `Object`

*B:* `Module`

*C:* `BasicObject`

*D:* `Class`

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

