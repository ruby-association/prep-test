# Ruby技術者認定試験Gold模擬問題

[回答](gold_answers_ja.md)

**Q1. 以下の実行結果を出力するコードがあります。**

```
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

[実行結果]
"bar"
```

**__(1)__に入る適切な記述を選択してください。(2つ選択)**

*A:*
```
[:push, :pop].each do |name|
  define_method(name) do |*args|
    @contents.send(name, *args)
  end
end
```

*B:*
```
for name in [:push, :pop]
  define_method(name) do |*args|
    @contents.send(name, *args)
  end
end
```

*C:*
```
[:push, :pop].each do |name|
  instance_eval(<<-EOF)
    def #{name}(*args)
      @contents.send(:#{name}, *args)
    end
  EOF
end
```

*D:*
```
[:push, :pop].each do |name|
  class_eval(<<-EOF)
    def #{name}(*args)
      @contents.send(:#{name}, *args)
    end
  EOF
end
```

-----------------------------------------------------------------

**Q2. 以下のコードがあります。**

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

**実行結果として正しいものを選択してください。(1つ選択)**

*A:* `[P, C, I, Object, Kernel, BasicObject]`

*B:* `[C, P, I, Object, Kernel, BasicObject]`

*C:* `[C, I, Object, Kernel, BasicObject, P]`

*D:* `[P, I, C, Object, Kernel, BasicObject]`

-----------------------------------------------------------------

**Q3. 以下の実行結果を出力するコードがあります。** 

```
x = __(1)__
p x + 1

[実行結果]
(4/3)
```

**__(1)__に入る適切な記述を選択してください。(1つ選択)**

*A:* `1 / 3r`

*B:* `1 / 3R`

*C:* `1 / %r(3)`

*D:* `1 / 3`

-----------------------------------------------------------------

**Q4. 以下の実行結果を出力するコードがあります。** 

```
p ("aaaaaa".."zzzzzz").lazy.select { |e| e.end_with?("f") }.__(1)__

[実行結果]
["aaaaaf", "aaaabf", "aaaacf"]
```

**__(1)__に入る適切な記述を選択してください。(複数選択)**

*A:* `first(3)`

*B:* `take(3)`

*C:* `take(3).force`

*D:* `first(3).force`

-----------------------------------------------------------------

**Q5. 以下の実行結果を出力するコードがあります。**

```
def round(n, __(1)__)
  n.round(__(1)__)
end

p round(2.5, half: :even)

[実行結果]
2
```

**__(1)__に入る適切な記述を選択してください。(1つ選択)**

*A:* `*`

*B:* `**`

*C:* `..`

*D:* `...`

-----------------------------------------------------------------

**Q6. 以下のコードがあります。**

```
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

**実行結果として正しいものを選択してください。(1つ選択)**

*A:*
```
baz
```

*B:*
```
quux
```

*C:*
文法エラーが発生する

*D:*
例外が発生する

-----------------------------------------------------------------

**Q7. 以下の実行結果を出力するコードがあります。** 

```
class Greeter
  class << self
    def hello
      puts "Hello there!"
    end
  end
end

__(1)__

[実行結果]
Hello there!
```

**__(1)__に入る適切な記述を選択してください。(2つ選択)**

*A:* `Greeter.new.hello`

*B:* `Greeter.hello`

*C:* `Greeter.new.class.hello`

*D:* `Greeter.class.new.hello`

---------------------------------------------------------------

**Q8: 以下の実行結果を出力するコードがあります。**

```
__(1)__

p multiply_by(4) { 2 + 3 }

[実行結果]
20
```

**__(1)__に入る適切な記述を選択してください。(2つ選択)**

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

**Q9: 以下の実行結果を出力するコードがあります。** 

```
__(1)__

p sum { |e| e << 1 << 5 << 7 }

[実行結果]
13
```

**__(1)__に入る適切な記述を選択してください。(2つ選択)**

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

**Q10. 以下のコードがあります。** 

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

**実行結果として正しいものを選択してください。(1つ選択)**

- *A:* `1`

- *B:* `2`

- *C:* `3`

- *D:* 例外が発生する

-----------------------------------------------------------------

**Q11. 以下の実行結果を出力するコードがあります。**

```
words = ["apple", "banana", "cabbage"]
pop = Proc.new { words.pop }
3.times{ puts __(1)__ }

[実行結果]
cabbage
banana
apple
```

**__(1)__に入る適切な記述を選択してください。(1つ選択)**

*A:* `pop.load`

*B:* `pop.send`

*C:* `pop.run`

*D:* `pop.call`

*E:* `pop.eval`

-----------------------------------------------------------------

**Q12. 以下の実行結果を出力するコードがあります。**

```
words = ["apple", "banana", "cabbage"]
pop = __(1)__{ words.pop }
3.times{ puts pop.call }

[実行結果]
cabbage
banana
apple
```

**__(1)__に入る適切な記述を選択してください。(2つ選択)**

*A:* `Proc.new`

*B:* `Block.new`

*C:* `lambda`

*D:* `Lambda.new`

-----------------------------------------------------------------

**Q13. 以下の実行結果を出力するコードがあります。**

```
add = __(1)__
puts add.call("hello")

[実行結果]
HELLO
```

**__(1)__に入る適切な記述を選択してください。(1つ選択)**

*A:* `->(e) { e.upcase }`

*B:* `\(e) -> { e.upcase }`

*C:* `-> { (e) e.upcase }`

*D:* `-> { |e| e.upcase }`

-----------------------------------------------------------------

**Q14. 以下の実行結果を出力するコードがあります。**

```
__(1)__
  x + y
end

p add(1, 2)

[実行結果]
3
```

**__(1)__に入る適切な記述を選択してください。(1つ選択)**

*A:* `add = ->(x, y) do`

*B:* `add = lambda do |x, y|`

*C:* `add = Proc.new do |x, y|`

*D:* `define_method(:add) do |x, y|`

-----------------------------------------------------------------

**Q15. 以下のコードがあります。**

```
def reader_method(s)
  <<~EOF
    def #{s}
      @#{s}
    end
  EOF
end

print reader_method("foo")
```

**実行結果として正しいものを選択してください。(1つ選択)**

*A:*
```
    def foo
      @foo
    end
```

*B:*
```
  def foo
    @foo
  end
```

*C:*
```
def foo
  @foo
end
```

*D:*
文法エラーが発生する

-----------------------------------------------------------------

**Q16. 以下の実行結果を出力するコードがあります。**

```
obj = Object.new

def obj.hello
  puts "Hi!"
end

copy = __(1)__

copy.hello

[実行結果]
Hi!
```

**__(1)__に入る適切な記述を選択してください。(1つ選択)**

*A:* `Marshal.load(Marshal.dump(obj))`

*B:* `obj.dup`

*C:* `obj.clone`

*D:* `obj.copy`

-----------------------------------------------------------------

**Q17. 以下の実行結果を出力するコードがあります。**

```
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

[実行結果]
- Milk
- Bread
- Eggs
```

**__(1)__に入る適切な記述を選択してください。(1つ選択)**

*A:* `to_s`

*B:* `to_str`

*C:* `inspect`

*D:* `puts`

-----------------------------------------------------------------

**Q18. 以下の実行結果を出力するコードがあります。**

```
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

[実行結果]
ShoppingList:
  @items: ["Milk", "Bread", "Eggs"]
```

**__(1)__に入る適切な記述を選択してください。(1つ選択)**

*A:* `to_s`

*B:* `to_str`

*C:* `inspect`

*D:* `p`

-----------------------------------------------------------------

**Q19. 以下の実行結果を出力するコードがあります。**

```
p __(1)__.flat_map {|z|
  (1..z).flat_map {|x|
    (x..z).select {|y|
      x**2 + y**2 == z**2
    }.map {|y|
      [x, y, z]
    }
  }
}.take(3).to_a

[実行結果]
[[3, 4, 5], [6, 8, 10], [5, 12, 13]]
```

**__(1)__に入る適切な記述を選択してください。(1つ選択)**

*A:* `(1..-1).delay`

*B:* `(1..).delay`

*C:* `(1..-1).lazy`

*D:* `(1..).lazy`

-----------------------------------------------------------------

**Q20. 以下の実行結果を出力するコードがあります。**

```
ary = ["foo", "bar", nil, "baz"]

p ary.__(1)__ { |i|
  i&.upcase
}

[実行結果]
["FOO", "BAR", "BAZ"]
```

**__(1)__に入る適切な記述を選択してください。(1つ選択)**

*A:* `map`

*B:* `filter_map`

*C:* `collect`

*D:* `collect_compact`

-----------------------------------------------------------------

**Q21. 以下のコードがあります。**

```
a, b, *c = ["apple", "banana", "carrot", "daikon"]

p c
```

**実行結果として正しいものを選択してください。**

*A:* `["apple", "banana", "carrot", "daikon"]`

*B:* `"carrot"`

*C:* `["carrot"]`

*D:* `["carrot", "daikon"]`

-----------------------------------------------------------------

**Q22: 以下の実行結果を出力するコードを選択してください。(1つ選択)**

```
[実行結果]
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

**Q23. 以下の実行結果を出力するコードがあります。**

```
p ["foo", "bar", "baz"].map { __(1)__.upcase }

[実行結果]
["FOO", "BAR", "BAZ"]
```

**__(1)__に入る適切な記述を選択してください。(1つ選択)**

*A:* `_1`

*B:* `$1`

*C:* `$_`

*D:* `it`

-----------------------------------------------------------------

**Q24. 以下のコードがあります。**

```
def fx(a:, b: "apple")
  p a
  p b
end

fx(b: "banana")
```

**実行結果として正しいものを選択してください。**

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

*C:*
文法エラーが発生する

*D:*
例外が発生する

-----------------------------------------------------------------

**Q25. 以下の実行結果を出力するコードがあります。**

```
def add(x:, y:, **params)
  z = x + y

  params[:round] ? z.round : z
end

__(1)__

[実行結果]
7
```

**__(1)__に入る適切な記述を選択してください。(3つ選択)**

*A:* `p add(x: 2.75, y: 5.25, round: true)`

*B:* `p add(x: 3.75, y: 3, round: true)`

*C:* `options = {:round => true}; p add(x: 3.75, y: 3, **options)`

*D:* `p add(x: 3, y: 4)`

*E:* `p add(x: 7)`

-----------------------------------------------------------------

**Q26: 以下の実行結果を出力するコードがあります。**

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

[実行結果]
Hello!
```

**__(1)__に入る適切な記述を選択してください。(2つ選択)**

*A:* `puts Speaker.speak`

*B:* `puts Speaker.singleton_class.speak`

*C:* `puts Speaker.instance_variable_get(:@message)`

*D:* `puts Speaker.singleton_class.instance_variable_get(:@message)`

-----------------------------------------------------------------

**Q27. 以下のコードがあります。**

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

**実行結果として正しいものを選択してください。(1つ選択)**

*A:* `"Hello!"`

*B:* `"Howdy!"`

*C:* `nil`

*D:* 文法エラーが発生する

-----------------------------------------------------------------

**Q28. 以下の実行結果を出力するコードがあります。**

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

[実行結果]
x
y
done!
```

**__(1)__に入る適切な記述を選択してください。(1つ選択)**

*A:* `try`

*B:* `catch`

*C:* `catch :done`

*D:* `rescue`

-----------------------------------------------------------------

**Q29. 以下の実行結果を出力するコードがあります。**

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

[実行結果]
abc
```
**__(1)__に入る適切な記述を選択してください。(1つ選択)**

*A:* `throw [a,b,c]`

*B:* `throw [a,b,c], :done`

*C:* `throw :done, [a,b,c]`

*D:* `raise :done, [a,b,c]`

-----------------------------------------------------------------

**Q30. 以下の実行結果を出力するコードがあります。**

```
begin
  __(1)__
rescue
  puts "OK"
end

[実行結果]
OK
```

**__(1)__に入る適切な記述を選択してください。(2つ選択)**

*A:* `raise StandardError`

*B:* `raise Exception`

*C:* `raise ArgumentError`

*D:* `raise ScriptError`

-----------------------------------------------------------------

**Q31. 以下のコードがあります。**

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

**実行結果として正しいものを選択してください。(1つ選択)**

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

**Q32. 以下のコードがあります。**

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

**実行結果として正しいものを選択してください。(1つ選択)**

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

**Q33. 以下のコードがあります。**

```
begin
  "hello".world
rescue => ex
  p ex.class
end
```

**実行結果として正しいものを選択してください。(1つ選択)**

*A:* `StandardError`

*B:* `Exception`

*C:* `NameError`

*D:* `NoMethodError`

*E:* `ArgumentError`

-----------------------------------------------------------------

**Q34. 以下のコードがあります。**

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

**実行結果として正しいものを選択してください。(1つ選択)**

*A:* `CustomError`

*B:* `StandardError`

*C:* `Exception`

*D:* `RuntimeError`

*E:* `SyntaxError`

-----------------------------------------------------------------

**Q35. 以下のコードがあります。**

```
def greeting
  "hello"
ensure
  puts "Ensure called!"

  "hi"
end

puts greeting
```

**実行結果として正しいものを選択してください。(1つ選択)**

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

**Q36. 以下のコードがあります。**

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

**実行結果として正しいものを選択してください。(1つ選択)**

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

**Q37. 以下のコードがあります。**

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

**実行結果として正しいものを選択してください。(1つ選択)**

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

**Q38. 以下のコードがあります。**

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

**実行結果として正しいものを選択してください。(1つ選択)**

*A:* `Mixin`

*B:* `Class`

*C:* `Object`

*D:* `Identity`

-----------------------------------------------------------------

**Q39: `Class`の直接のスーパークラスを選択してください。(1つ選択)**

*A:* `Object`

*B:* `Module`

*C:* `BasicObject`

*D:* `Class`

-----------------------------------------------------------------

**Q40. 以下のコードがあります。**

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

**以下の記述のうち正しいものを選択してください。(1つ選択)**

*A:* `Mixin.greet`は`Hello World!`を出力し、`SomeClass.greet`は例外を発生する。

*B:* `Mixin.greet`は例外を発生し、`SomeClass.greet`は`Hello World!`を出力する。

*C:* `Mixin.greet`も`SomeClass.greet`も`Hello World!`を出力する。

*D:* `Mixin.greet`も`SomeClass.greet`も`Hello World!`を例外を発生する。

-----------------------------------------------------------------

**Q41. 以下の実行結果を出力するコードがあります。**

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

[実行結果]
Hello World!
```

**__(1)__に入る適切な記述を選択してください。(1つ選択)**

*A:* `Mixin.greet`

*B:* `SomeClass.new.greet`

*C:* `SomeClass.greet`

*D:* `Mixin.new.greet`

-----------------------------------------------------------------

**Q42. 以下の実行結果を出力するコードがあります。**

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

[実行結果]
Hello World!
```

**__(1)__に入る適切な記述を選択してください。(1つ選択)**

*A:* `Mixin.greet`

*B:* `SomeClass.new.greet`

*C:* `SomeClass.greet`

*D:* `Mixin.new.greet`

-----------------------------------------------------------------

**Q43. 以下の実行結果を出力するコードがあります。**

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

[実行結果]
Hello World!
```

**__(1)__に入る記述として不適切なものを選択してください。(1つ選択)**

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

**Q44. 以下の実行結果を出力するコードがあります。**

```
h = [1, 2, 3]
case h
__(1)__ [x, y]
  p [:two, x, y]
__(1)__  [x, y, z]
  p [:three, x, y, z]
end

[実行結果]
[:three, 1, 2, 3]
```

**__(1)__に入る適切な記述を選択してください。(1つ選択)**

*A:* `when`

*B:* `in`

*C:* `if`

*D:* `=>`

-----------------------------------------------------------------

**Q45. 以下の実行結果を出力するコードがあります。**

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

[実行結果]
["A", "B", "C", "D", "E"]
["X", "Y", "Z"]
```

**__(1)__に入る適切な記述を選択してください。(1つ選択)**

*A:* `all`

*B:* `each`

*C:* `to_a`

*D:* `to_ary`

*E:* `to_enum`

-----------------------------------------------------------------

**Q46. 以下のコードがあります。**

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
**実行結果として正しいものを選択してください。(1つ選択)**

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
例外が発生する

-----------------------------------------------------------------

**Q47. 以下のコードがあります。**

```
require "date"

date = Date.new(2000, 2, 24)

puts(date << 12)
puts(date >> 12)
```

**実行結果として正しいものを選択してください。(1つ選択)**

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

**Q48. 以下の実行結果を出力するコードがあります。**

```
require "time"

t = Time.__(1)__("00000024021993", "%S%M%H%d%m%Y")
puts t.iso8601

[実行結果]
1993-02-24T00:00:00+09:00
```

**__(1)__に入る適切な記述を選択してください。(1つ選択)**

*A:* `format`

*B:* `parse`

*C:* `strftime`

*D:* `strptime`

-----------------------------------------------------------------

**Q49. 以下の実行結果を出力するコードがあります。**

```
require "singleton"

class Foo
  __(1)__
end

x = Foo.instance
y = Foo.instance
p x.equal?(y)

[実行結果]
true
```

**__(1)__に入る適切な記述を選択してください。(1つ選択)**

*A:* `include Singleton`

*B:* `extend Singleton`

*C:* `using Singleton`

*D:* `singletonize`

-----------------------------------------------------------------

**Q50. 以下の実行結果を出力するコードがあります。**

```
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

[実行結果]
"b"
```

**__(1)__に入る適切な記述を選択してください。(1つ選択)**

*A:* `forward`

*B:* `def_forwarder`

*C:* `def_delegator`

*D:* `define`

-----------------------------------------------------------------

