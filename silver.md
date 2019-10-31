# Ruby Association Certified Ruby Examination Silver Sample Questions

**Q1. Which of the following have true values in Ruby? (Choose two.)**

- (a) `""` 
- (b) `0` 
- (c) `false`
- (d) `nil`

-------------------------------------------------------------------------

**Q2. Which of the following are reserved words in Ruby? (Choose two.)**

- (a) `each`
- (b) `rand`
- (c) `class`
- (d) `send`
- (e) `true`

---------------------------------------------------------------------------

**Q3. Which variable name is valid in Ruby? (Choose one.)**

- (a) `3y`
- (b) `false`
- (c) `_9class`
- (e) `xyz$`

---------------------------------------------------------------------------

**Q4. Which of the following can be inserted into `__(1)__`  in order to generate the output below? (Choose two.)** 

```
$code = "CODE"
__(1)__

[Output]
i like writing CODE
```

- (a) `puts "i like writing #{$code}"`
- (b) `puts "i like writing #$code"`
- (c) `puts 'i like writing #{$code}'`
- (d) `puts 'i like writing #$code'`

---------------------------------------------------------------------------

**Q5. Given the following:** 

```
num = 025
puts num
```

**Which is the correct output? (Choose one.)**

- (a) `nil`
- (b) `025`	
- (c) `21`
- (d) `25`

---------------------------------------------------------------------------

**Q6. Given the following:**

```
x = "Hello"
y = x.empty? ? 1 : 2
p y
```

**Which is the correct output? (Choose one.)**

- (a) 1
- (b) 2	
- (c) "Hello"
- (d) true

---------------------------------------------------------------------------

**Q7. Given the following:**

```
amount = 120

size = case amount
  when 1..120; "S"
  when 120..170; "M"
  when 170..200; "L"
  else "XL"
end

p size
```

- (a) `"S"`
- (b) `"M"`
- (c) `"L"`	
- (d) `"XL"`

**Which is the correct output? (Choose one.)**

---------------------------------------------------------------------------

**Q8. Given the following:**

```
item = "apple"

["banana", "carrot", "daikon"].each do |item|
  puts item
end

puts item
```

**Which is the correct result? (Choose one.)**

*(a)*
A syntax error occurs

*(b)*
An exception is raised

*(c)*
```
banana
carrot
daikon
daikon
```

*(d)*
```
banana
carrot
daikon
apple
```

---------------------------------------------------------------------------

**Q9. Given the following:**

```
x = 0

4.times do |i|
  x += i
end

p x
```

**Which is the correct result? (Choose one.)**


- (a) `0`
- (b) `4`
- (c) `6`
- (d) A syntax error occurs

---------------------------------------------------------------------------

**Q10. Which of the following are correct to specify Windows-1252 as the encoding of the source code? (Choose all that apply.)**

- (a) `# charset: Windows-1252`
- (b) `# chars: Windows-1252`	
- (c) `# coding: Windows-1252`
- (d) `# encoding: Windows-1252`

---------------------------------------------------------------------------

**Q11. Given the following:**

```
# coding: Windows-1252

puts "hello".encoding.name
```

**Which is the correct result? (Choose one)**

- (a) ASCII-8BIT	
- (b) UTF-8	
- (c) Windows-1252
- (d) A syntax error occurs.

---------------------------------------------------------------------------

**Q12. Given the following:**

```
puts "hello".encoding.name
```

**Which is the correct result? (Choose one.)**

- (a) ASCII-8BIT	
- (b) UTF-8	
- (c) Windows-1252
- (d) A syntax error occurs.

---------------------------------------------------------------------------

**Q13. Given the following:**

```
s = "pear"

if s.empty?
  puts "blank"
elsif s.length < 5
  puts "short"
else
  puts "long"
end
```

**Which is the correct result? (Choose one.)**

- (a) blank
- (b) short
- (c) long
- (d) an exception is raised

---------------------------------------------------------------------------

**Q14: Given the following:**

```
s = "daikon"

if s.empty?
  puts "blank"
elsif s.length < 5
  puts "short"
else
  puts "long"
end
```

**Which is the correct result? (Choose one.)**

- (a) blank
- (b) short
- (c) long
- (d) An exception is raised.
 
---------------------------------------------------------------------------

**Q15: Which of the following can be inserted into `__(1)__`  in order for the given code to generate the output below? (Choose one.)** 

```
n = 42
if n < 0
  puts "a"
__(1)__ n > 0
  puts "b"
else
  puts "c"
end

[Output]
b
```

- (a) `elseif`
- (b) `else if`
- (c) `elif`
- (d) `elsif`

---------------------------------------------------------------------------

**Q16. Which of the following regular expressions only match the string "Ruby" or "ruby"? (Choose two.)**

- (a) `/\A[Rr]uby\z/`	
- (b) `/\ARuby|ruby\z/`
- (c) `/\A[Rr][u][b][y]\z/`
- (d) `/\AR|ruby\z/`	

---------------------------------------------------------------------------

**Q17. Which of the following regular expressions has a match only when a string has at least one character, and consists of lowercase letters only? (Choose one.)**

- (a) `/\A[a-z]*\z/`
- (b) `/\A[a-z][a-z]*\z/`
- (c) `/\A[a-z][^a-z]*\z/`
- (d) `/\A[a-z][a-z].\z/`

---------------------------------------------------------------------------

**Q18.Given the following:**

```
MSG = 42
MSG += 5
p MSG
```

**What is the correct result? (Choose one.)**

- (a) `47` is displayed without warning.	
- (b) An error occurs because MSG is a constant.
- (c) `42` is displayed because MSG is a constant.
- (d) A warning appears beacuse MSG is a constant but `47` is displayed.

---------------------------------------------------------------------------

**Q19. Given the following:**

```
MSG = "hello"
MSG.upcase!
p MSG
```

**What is the correct result? (Choose one.)**

- (a) An error occurs because MSG is a constant.
- (b) `HELLO` is displayed without warning.	
- (c) A warning apears because MSG is a constant but "HELLO" is displayed	
- (d) `hello` is displayed since MSG is a constant.

---------------------------------------------------------------------------

**Q20. Which of the following statements are true? (Choose two.):**

- (a) Local variables start with a lower case letter, and are two or more characters in length.	
- (b) Global variables start with $.	
- (c) Instance variables start with *.	
- (d) Class variables start with $.
- (e) Constants start with an upper case letter.

---------------------------------------------------------------------------

**Q21. Given the following:**

```
x = [1,2,3,4,5,6,7,8]
y = x
x.reject! { |e| e.even? }
p x
p y
```

**Which is the correct output? (Choose one)**


*(a)*
```
[1,3,5,7]
[1,2,3,4,5,6,7,8]
```

*(b)*
```
[1,2,3,4,5,6,7,8]
[1,2,3,4,5,6,7,8]
```

*(c)*
```
[1,3,5,7]
[1,3,5,7]
```

*(d)*
```
[1,3,5,7]
[2,4,6,8]
```

---------------------------------------------------------------------------

**Q22. Given the following:**

```
a = [ 2, 4, 6, 8, 10 ]
a.shift
a.pop
a.push(12)
p a
```

- (a) `[2, 4, 6, 8, 10, 12]`	
- (b) `[2, 4, 6, 8, 10]`	
- (c) `[4, 6, 8, 12]`	
- (d) `[4, 6, 8]`

**Which is the correct output? (Choose one.)**

---------------------------------------------------------------------------

**Q23. Which of the following can be inserted into `__(1)__`  in order for the given code to generate the output below? (Choose one.)** 

```
x = true
x __(1)__ exit(1)
puts("succeeded!")

[Output]
succeeded!
```


- (a) `|`
- (b) `||`
- (c) `&`
- (d) `&&`

---------------------------------------------------------------------------

**Q24. Given the following:**

```
m = true
m or n = true
p n
```

**Which is the correct result? (Choose one.)**


- (a) `true`
- (b) `false`
- (c) `nil`	
- (d) A syntax error occurs.

---------------------------------------------------------------------------

**Q25. Which of the following can be inserted into __(1)__  in order for the given code to generate the output below? (Choose two.)** 

```
x = [ 9, 7, 5, 3, 1 ]
p __(1)__

[Output]
[7, 5, 3]
```

- (a) `x[1, 3]`	
- (b) `x[1..-1]`
- (c) `x[-3..-1]`
- (d) `x[-4..-2]`	

---------------------------------------------------------------------------

**Q26. Which of the following can be inserted into __(1)__  in order for the given code to generate the output below? (Choose one.)** 

```
ary = [ "apple", "banana", "carrot" ]
p ary.__(1)__(",")

[Output]
"apple,banana,carrot"
```

- (a) `concat`
- (b) `map`
- (c) `select`	
- (d) `join`	

---------------------------------------------------------------------------

**Q27. Given the following:**

```
puts "42A7".to_i
```

**What is the correct result? (Choose one)**

- (a) 42	
- (b) 42A7	
- (c) 17063
- (d) An error occurs at run-time.

---------------------------------------------------------------------------

**Q28. Which of the following methods will NOT show you if the element 'c' exists in the hash key or not? (Choose one.)**

```
h = {"a"=>2, "b"=>4, "c"=>6, "d"=>8, "e"=>10}
```

- (a) `p h.has_key?('c')`	
- (b) `p h.contain?('c')`	
- (c) `p h.include?('c')`	
- (d) `p h.key?('c')`	
- (e) `p h.member?('c')`

---------------------------------------------------------------------------

**Q29. "Which of the following can be inserted into `__(1)__`  in order for the given code to generate the output below? (Choose two.)** 

```
a = [120, 40, 20, 80, 160, 60, 180]
a.__(1)__
p a

[Output]
[120,80,160,180]
```

- (a) `reject! {|i| i < 80}`	
- (b) `slice {|i| i < 80 }`	
- (c) `slice! {|i| i < 80}`
- (d) `delete_if! {|i| i < 80}`
- (e) `delete_if {|i| i < 80}`
- (f) `reject {|i| i < 80}`

---------------------------------------------------------------------------

**Q30. Which of the following can be inserted into `__(1)__`  in order for the given code to generate the output below? (Choose one.)**

```
p ["apple", "banana"] __(1)__ ["banana", "carrot"]

[Output]
["apple", "banana", "carrot"]
```

- (a) `.concat`
- (b) `&`	
- (c) `|`
- (d) `||`	

---------------------------------------------------------------------------

**Q31. Which of the following can be inserted into `__(1)__`  in order for the given code to generate the output below? (Choose one.)**

```
p ["apple", "banana"] __(1)__ ["banana", "carrot"]

[Output]
["banana"]
```

- (a) `|`
- (b) `||`	
- (c) `&&`	
- (d) `&`
- (e) `.concat`

---------------------------------------------------------------------------

**Q32. Given the following:**

```
class SomeError < StandardError; end
class SomeOtherError < SomeError; end

def meth1
  raise SomeOtherError.new("error")
end

begin
  meth1
rescue SomeError
  print "SomeError"
rescue SomeOtherError
  print "SomeOtherError"
end
```

What is the correct result? (Choose one.)

- (a) A syntax error	
- (b) `SomeError`	
- (c) `SomeErrorSomeOtherError`	
- (d) `SomeOtherError`

---------------------------------------------------------------------------

**Q33. Given the following:**

```
begin
  ans = 100/0
  puts ans
rescue ZeroDivisionError
  puts "Error: ZeroDivisionError"
  exit 1
ensure
  puts "DONE!"
end
```

**Which is the correct output? (Choose one.)**

*(a)*
```
0
DONE!
```

*(b)*

```
Error: ZeroDivisionError	
```

*(c)*
```
Error: ZeroDivisionError
DONE!
```

*(d)*
```
Error: ZeroDivisionError
0
```

---------------------------------------------------------------------------

**Q34. Which of the following statements appropriately applies to class in Ruby? (Choose one.)**

*For a class which does not explicitly specify a superclass:*

- (a) an `UndefinedParentClassError` exception is raised
- (b) a syntax error occurs
- (c) the `Module` class becomes the superclass.	
- (d) the class is created without a superclass.
- (e) the `Object` class becomes the superclass.

---------------------------------------------------------------------------

**Q35. Given the following:**

```
class Object
  def moo
    puts "MOO!"
  end
end

"Cow".moo
```

**What is the correct result? (Choose one.)**

- (a) No output.
- (b) An error occurs at run-time.	
- (c) "MOO!"	
- (d) `nil`

---------------------------------------------------------------------------

**Q36. Which of the following can be inserted into `__(1)__`  in order for the given code to generate the output below? (Choose one.)** 

```
class Shouter
  def __(1)__(message)
    @message = message
  end

  def greet
    puts @message.upcase
  end
end

g = Shouter.new("Hello, world!")
g.greet

[Output]
HELLO, WORLD!
```

- (a) `Shouter`	
- (b) `new`
- (c) `initialize`
- (d) `__init__`

---------------------------------------------------------------------------

**Q37. Which of the following can be inserted into `__(1)__`  in order for the given code to generate the output below? (Choose one.)** 

```
class Shouter
  def initialize(message)
    @message = message
  end

  def greet
    puts @message.upcase
  end
end

g = __(1)__("Hello, world!")
g.greet

[Output]
HELLO, WORLD!
```

- (a) `Shouter`
- (b) `#Shouter`
- (c) `new Shouter`
- (d) `Shouter.new`

---------------------------------------------------------------------------

**Q38. Given the following:**

```
class Foo
  attr_reader :var
  def initialize
    @var = "apple"
  end
end

class Bar < Foo
  def initialize
    @var = "banana"
    super
  end
end

bar = Bar.new
puts bar.var
```

**What is the correct result? (Choose one.)**

	
- (a) apple	
- (b) banana
- (c) No output.	
- (d) An error occurs at run-time.

---------------------------------------------------------------------------

**Q39. Given the following:**

```
ary = [4,2,8,4,2,8,4,2,8]
ary.delete(8)
p ary
```

Which is the correct output? (Choose one.)

- (a) `[4, 2, 8, 4, 2, 8, 4, 2]`	
- (b) `[4, 2, 8, 4, 2, 8, 4, 2, 8]`	
- (c) `[4, 2, 4, 2, 4, 2]`	
- (d) `[8]`

---------------------------------------------------------------------------

**Q40. Which of the following can be inserted into `__(1)__`  in order for the given code to generate the output below? (Choose one.)**

```
r = "a".."e"
p r.__(1)__

[Output]
["a", "b", "c", "d", "e"]
```

**Which is the correct output? (Choose one.)**

- (a) `array`	
- (b) `to_ary`	
- (c) `to_a`
- (d) `to_array`

---------------------------------------------------------------------------

**Q41. Given the following:**

```
p [0,1,2,3,4,5].find {|x| x < 3}
```

**Which is the correct output? (Choose one.)**

- (a) `[0, 1, 2]` 
- (b) `0`	
- (c) `[0, 1, 2, 3]`
- (d) `true`

---------------------------------------------------------------------------

**Q42. Which of the following can be inserted into `__(1)__`  in order for the given code to generate the output below? (Choose two.)** 

```
p [1,16,8,4,2].__(1)__

[Output]
[16, 8, 4, 2, 1]
```


- (a) `sort_by { |x| -x }`
- (b) `sort_reverse`
- (c) `sort.reverse`	
- (d) `reverse.sort`

---------------------------------------------------------------------------

**Q43. Which of the following can be inserted into __(1)__ in order for the given code to sort an array in descending order? (Choose one.)**

```
ary = [2,4,8,1,16]
p ary.__(1)__

[Output]
[16, 8, 4, 2, 1]
```

- (a) `sort { |i,j| -i <= -j }`
- (b) `sort { |i,j| -i <=> -j }`
- (c) `sort { |i,j| i >= j }`
- (d) `sort{ |i,j| i <=> j }`

---------------------------------------------------------------------------

**Q44. Given the following:**

```
file = File.new("test")
file.seek(5)
print file.gets

[Contents of file test]
hellorubyworld
```

**Which is the correct output? (Choose one.)**

- (a) hello	
- (b) rubyworld	
- (c) hellor	
- (d) rubyw	
- (e) orubyworld

---------------------------------------------------------------------------

**Q45. The code below was used to open a file omitting the second argument of the open method.  In this case, which of the following is implicitly specified? (Choose one.)**

```
file = open("sample.txt")
```

- (a) `r`	
- (b) `r+`
- (c) `a`
- (d) `a+`	
- (e) `w`	
- (f) `w+`	

---------------------------------------------------------------------------

**Q46: Which of the following can be inserted into `__(1)__`  in order for the given code to copy the content of file "test_one.txt" to file "test_two.txt"?**

**In the case that the “test_two.txt” file already exist, this code should set first the file size to zero and then overwrites its content from the beginning. (Choose two.)**

```
open("test_one.txt") {|source|
  open("test_two.txt", "__(1)__") {|dest|
    dest.write(source.read)
  }
}
```

- (a) `r+`
- (b) `a`
- (c) `a+`
- (d) `w`	
- (e) `w+`

---------------------------------------------------------------------------

**Q47: Which class methods do NOT belong to `Dir` class? (Choose two.)**

- (a) `Dir.pwd`
- (b) `Dir.rename`
- (c) `Dir.basename`
- (d) `Dir.chdir`
- (e) `Dir.delete`

---------------------------------------------------------------------------

**A1:** (a) and (b)

In Ruby, all objects have a logical value for use in conditional statements.

The objects `false` and `nil` are treated as
logically false, all other objects are treated as logically true.

---------------------------------------------------------------------------

**A2:** (c) and (e)

The complete list of reserved words as of Ruby 2.1 is listed below:

![](http://www.ruby.or.jp/en/certification/examination//index.data/ruby-keywords.png)

---------------------------------------------------------------------------

**A3:** (c)

Ruby variable names must begin with a lowercase letter or underscore, and may contain only letters, numbers, and underscore characters.

Variable names must not conflict with keywords (e.g. you cannot have a variable called `class`), but unambiguous names that contain reserved words are acceptable (i.e. both `classy` and `_class` are valid Ruby variable names)

---------------------------------------------------------------------------

**A4:** (a) and (b)

Single quoted string literals are simple, and are meant to represent raw sequences of characters.

Double quoted string literals are more complex, but offer extra features such as string interpolation (`#{...}`), where entire Ruby expressions can be evaluated and inserted into a string.

As a shortcut, `#$` is usable for inserting the contents of a global variable into a string. (Similarly, `#@` can be used with instance variables). This shortcut variant is less commonly used than the more general `#{...}` form.


---------------------------------------------------------------------------

**A5:** (c)

A leading zero in an integer literal indicates 'octal-mode' in Ruby, i.e. a number in base 8 format. However, all print functions in Ruby will output numeric values in base 10 by default.

Should you need to output numbers in something other than base 10, there are many different functions in Ruby for formatted numeric output (e.g. `String#%`, `Numeric#to_s(base)`, `Kernel#sprintf`)

---------------------------------------------------------------------------

**A6:** (b)

The ternary operator (`cond ? expr1 : expr2`) is a compact form of `if/else` which will return `expr1` if `cond` is true, otherwise will return `expr2`. It is most suitable for short statements that easily fit on a single line.

---------------------------------------------------------------------------

**A7:** (a)

Ruby `case` statements will select the first branch to match its `when` condition.

Because Ruby's two-dot range literal is an inclusive range, the end value is included as part of the range.

So although both `1..120` and `120..170` include `120`, the `when 1..120` branch is matched because it appears first in the case statement.

---------------------------------------------------------------------------

**A8:** (d)

Although local variables from the surrounding scope are accessible within blocks, block parameters themselves are always block-local variables. This means that when a block parameter has the same name as a local variable from the surrounding scope, within the block any references will refer to the block-local variable. This prevents accidental modification of variables from the outside scope due to naming collisions.

Defining block parameters with the same name as a local variable from the surrounding scope is considered an antipattern and may be a sign of an accidental programming error. To catch this problem, run `ruby` with the `-w` flag, and you will see warnings like `warning: shadowing outer local variable - item` wherever this problem occurs.

---------------------------------------------------------------------------

**A9:** (c)

The `Integer#times` method yields values starting at zero, up to one less than the specified integer.

Although block variables with the same name of local variables from the surrounding scope are shadowed (see `A8`), other local variables are accessible and can be modified. This is because Ruby blocks are _closures_.

---------------------------------------------------------------------------

**A10:** (c), (d)

The encoding _magic comment_ must appear as the first line of the file, unless a UNIX shebang line is present (in that case, the encoding line would be placed on the second line).

Both `coding: ...` and `encoding: ...` may be used to set the source file's encoding, and they work identically.

Setting the encoding for a source file affects only the contents of that file. In other words, it applies to things like string literals in the file, but does not automatically set encoding for things like reading from and to other files.

If no encoding comment is present in a file, the default encoding is set to UTF-8.

---------------------------------------------------------------------------

**A11:** (c)

`String#encoding` returns an `Encoding` object which also provides some other helpful methods (e.g. `Encoding#ascii_compatible?`)

---------------------------------------------------------------------------

**A12:** (b)

When a `coding:` comment is omitted, Ruby will use UTF-8 by default for its source encoding.

---------------------------------------------------------------------------

**A13:** (b)

In an `if/elsif/else` conditional statement, the first matching `if` or `elsif` branch will be executed. If none match, then the `else` branch will be run.

---------------------------------------------------------------------------

**A14.** (c)

When none of the `if` and `elsif` clauses of a conditional statement match, the `else` branch is run.

---------------------------------------------------------------------------
**A15: (d)**

Nearly every programming language has some sort of `if/elsif/else` structure, but they vary in the name they choose for `elsif`. This can be a source of confusion if you're coming to Ruby from another language, and the only solution is to memorize the specific term used in each language.

---------------------------------------------------------------------------
**A16: (a) and (c)**

Character classes (`[...]`) match any single character from within the brackets.

Alternatives (`...|...`) are used to match any one of many possible subexpressions.

The `\A` anchor matches the beginning of a string, and the `\z` anchor matches the end of a string.

_Note that the reason that (b) is not a correct answer is because its subexpressions are `\ARuby` and `ruby\z`, allowing matches for things like `Ruby123`_

---------------------------------------------------------------------------
**A17: (b)**

The expression `/\A[a-z][a-z]*\z/` could be described in words as "A string which begins with a lowercase letter, followed by zero or more additional lowercase letters and nothing else."

Here are some additional notes for understanding the other patterns in this question:

- The `*` quantifier matches a subexpression zero or more times.
- The `.` quantifier matches any character except a newline.
- The `^` inverts a character class, causing it to match anything except the named chars.

(see `A16` for a recap of other features that were already covered in that question)

---------------------------------------------------------------------------
**A18: (d)**

Constants can be redefined, but because this is usually a bad practice, a warning is displayed.

Because Ruby also uses constants for referencing module and class names, the constant redefinition warning can also help catch accidental naming collisions.

---------------------------------------------------------------------------
**A19. (b)**

No warning is shown because the constant is not being redefined; instead the object it references is being modified.

By convention, objects referenced by constants are usually treated as immutable. But there are certain rare cases where that convention would not apply.

---------------------------------------------------------------------------
**A20: (b) and (e)**

Some notes on Ruby variable naming rules:

- Global variables start with `$`.
- Class variables start with `@@`.
- Instance variables start with `@`.
- Local variables must begin with a lowercase letter or an underscore.
- The remaining characters in any variable type are limited to letters, numbers, and underscores.

---------------------------------------------------------------------------
**A21: (c)** 

In this example, both the `x` and `y` variables reference the same array object.

Because `Array#reject!` modifies its receiver, this means that it modifies the single array that is referenced by both variables.

---------------------------------------------------------------------------
**A22: (c)**

Some notes on `Array` operations:

- `shift` removes the first element of an array and returns its value.
- `pop` removes the last element of an array and returns its value
- `push` adds the specified element to the end of an array.

---------------------------------------------------------------------------
**A23: (b)**

The logical `||` and `&&` operators short-circuit, only executing the right side
of the expression if necessary.

The special `|` and `&` operators provided on Ruby's boolean objects do not short circuit, so the right side of the expression is always evaluated.

Note that all Ruby objects support the `||` and `&&` operators, but not all objects implement `|` and `&`.

---------------------------------------------------------------------------

**A24: (c)**

Although the `or` operator short circuits and the `n = true` expression is never executed, the `n` local variable is still statically declared. Therefore, the variable is present but its value is `nil`.

---------------------------------------------------------------------------
**A25: (a) and (d)**

This question illustrates two different ways of indexing a sub-array.

One approach is to use two integers, i.e. `x[1,3]`-- This means "get a subarray of length `3` starting at index `1`.

Another approach is to use a range, which generates a subarray based the index values within that range.

The simple form of using a range is something like `x[1..3]` which would give you a subarray starting at index `1` and ending at index `3`.

But Ruby also allows _negative_ indexing, which define indexes relative to the end of an array rather than the beginning.

Thus, `x[-4..-2]` is referring to the subarray starting from the 4th to the last position in the array, and continuing to the second-to-last position.

To clarify, here is a list of the index values for each position in the array from this question:

```
 x  [ 9,   7,   5,    3,    1]
 i    0    1    2     3     4
-i   -5   -4   -3    -2    -1
```

---------------------------------------------------------------------------

**A26: (d)**

`Array#join` returns a string that is created by converting each element 
in an array to a string and then combining them together with the 
specified separator.

---------------------------------------------------------------------------
**A27: (a)**

`String#to_i` attempts to parse an integer from a string starting from its first character, and continuing until the end of a valid number in a particular base. If a string does not begin with a valid number, `0` is returned.

By default, numbers are assumed to be in base 10, but other bases (from `2` to `36`) can be specified via a parameter. 

Note that while `"42A7".to_i` returns `42` because `A` is not a valid part of a base 10 number, `"42A7".to_i(16)` would extract the hexadecimal value `0x42A7`, which when converted to decimal would be equal to `17063`.

---------------------------------------------------------------------------
**A28. (b)**

`has_key?`, `key?`, `key?`, `member?` are all aliases for a single method which returns `true` if the given key is present in the hash, and returns `false` otherwise.

The `contain?` method is not defined by `Hash`.

---------------------------------------------------------------------------
**A29: (a) and (e)**

Some notes on array processing methods:

- In addition to `reject!` there is also `reject`, which returns a new array rather than modifying the original.
- Because there isn't a non-destructive form of `delete_if`, there is no `delete_if!` method. By convention Ruby only uses `!` at the end of the method when there are two features that work similarly but with one being more dangerous than the other.
- The `Array#slice` method works similarly to `Array#[]`, and is used for retrieving a specific value or subarray by index rather than filtering based on a condition. It does not accept a block.

---------------------------------------------------------------------------
**A30: (c)**

The `|` operator is equivalent to a set union. It returns a new array that is built by joining two arrays together, eliminating any duplicates while preserving order.

---------------------------------------------------------------------------
**A31: (d)**

The `&` operator is equivalent to a set intersection. It returns a new array that is made up of elements found in both arrays it operates on, while preserving order and eliminating duplicates.

---------------------------------------------------------------------------
**A32: (b)**

In a `begin/rescue/end` block... the first matched `rescue` statement will be executed.

Because `SomeOtherError` is a subclass of `SomeError`, it matches the `rescue SomeError` statement, and so that branch is what gets run.

In a real application, it is usually a good practice to attempt to match more specific errors before the more general errors that they inherit from (e.g. `rescue StandardError` would usually come last).

---------------------------------------------------------------------------
**A33: (c)**

Dividing by zero raises a `ZeroDivisionError` exception.

That exception is rescued, and a message is printed out. Then `exit(1)` tells Ruby to exit with an error code.

But because the `begin...end` expression has an `ensure` section, it is run before the interpreter exits.

The `ensure` clause is useful because it can be used to do cleanup even when some code raises an exception or tells Ruby to exit. It is often used for things like closing file handles, database connections, etc.

---------------------------------------------------------------------------
**A34: (e)** 

By default, all classes inherit from the `Object` class, whether or not they are explicit subclasses of some other class.

To create class hierarchies that do not inherit from `Object`, it is possible to explictly inherit from `BasicObject` instead, which has very few features built into it. But the use cases for doing so are uncommon.

---------------------------------------------------------------------------
**A35: (c)**

Class definitions can be re-opened and updated at any time, including Ruby core classes like `Object`.

Because all Ruby core objects (except `BasicObject`) inherit from the `Object` class, adding new methods to `Object` will make them available on all objects.

---------------------------------------------------------------------------
**A36: (c)**

Whenever the `new` method is called on a class, a new instance of that class is allocated and then the `initialize` method is called on that instance. This allows some setup code to be run as soon as the object is instantiated.

---------------------------------------------------------------------------
**A37: (d)**

The `new` method (defined by `Class`) is used to create new object instances.

---------------------------------------------------------------------------
**A38: (a)**

The `super` keyword invokes a method with the same name higher up the ancestry chain.

In this particular example, calling `Bar.new` causes `Bar#initialize` to run, which sets `@var = "banana"`. But then immediately after that, `super` is called, causing `Foo#initialize` to run. That method sets `@var = "apple"`, which explains the final result.

---------------------------------------------------------------------------
**A39: (c)**

`Array#delete` removes all elements from an array that are equal to the specified value.

For deleting a value at a particular index, see documentation for `Array#delete_at`.

For deleting values based on a condition, see documentation for  `Array#delete_if` (an alias for `reject!`).

---------------------------------------------------------------------------
**A40: (c)**

The `to_a` method uses the common naming convention for converting an object into an array, and is found throughout Ruby's collection classes.

Some objects also implement `to_ary`, which is used for implicit conversions. For example, `Array#flatten` will attempt to call `to_ary` on the elements within an array if it is present. But these use cases are uncommon.

---------------------------------------------------------------------------
**A41: (b)**

The `#find` method is defined by the `Enumerable` module. It returns the first element of the collection for which the block's result is not `false` or `nil`.

Note that `Enumerable#find` is also aliased as `Enumerable#detect`.

---------------------------------------------------------------------------
**A42: (a) and (c)**
The `sort_by` method maps the elements in a collection to a set of values via a block, and then sorts the elements of the collection in ascending order based on those values.

The `sort` method (when called without a block) sorts an array in ascending order directly based on the values of its elements. There is also a block form of `sort` which allows for element-by-element comparison.

Both `sort_by` and `sort` rely on the `<=>` operator to be defined in order to make comparisons between objects. Ruby's `Numeric` classes all implement this operator, but you can also define it for your own objects.

---------------------------------------------------------------------------
**A43: (b)**

When called with a block, `sort` will attempt to put elements in order based on the block's result.

The block must implement a comparison between two elements, and is expected to return a negative integer when the first element should appear before the second in the sorted array, `0` if the two elements have an equal sort order, and a postive integer when the first element should appear after the second in the sorted array.

Ruby's numeric objects implement `<=>`, which provides this behavior automatically:

```
>> 3 <=> 1
=> 1
>> 3 <=> 3
=> 0
>> 3 <=> 5
=> -1
```

The `<=>` (spaceship operator) can be implemented by any object that has a meaningful sort order.

---------------------------------------------------------------------------
**A44: (b)**

The `seek` method is used to move to a specific byte offset in an I/O stream.
Offsets are zero-based, so `seek(5)` sets the position in the stream to just *after* the fifth byte.

The `gets` method reads from the current position in the stream to the end of a line.

---------------------------------------------------------------------------
**A45: (a)**

The `"r"` open mode means "read only, starting from the beginning of the file."

This is both the safest default option and the most common use case.

---------------------------------------------------------------------------
**A46: (d) and (e)**

The following I/O open modes are supported by Ruby:

```
"r"  Read-only, starts at beginning of file  (default mode).

"r+" Read-write, starts at beginning of file.

"w"  Write-only, truncates existing file
     to zero length or creates a new file for writing.

"w+" Read-write, truncates existing file to zero length
     or creates a new file for reading and writing.

"a"  Write-only, each write call appends data at end of file.
     Creates a new file for writing if file does not exist.

"a+" Read-write, each write call appends data at end of file.
     Creates a new file for reading and writing if file does
     not exist.
```

---------------------------------------------------------------------------
**A47: (b) and (c)**

Some additional notes:

`FileUtils.mv` from the _fileutils_ stdlib can be used to rename a directory.

`File.basename` is used for getting the last part of a file name from a path string. (e.g. `File.basename("long/path/to/something") #=> "something"`)

---------------------------------------------------------------------------
**A48:** (b)

Similar to the syntax for indexing subarrays (Q25), it is possible to index a substring by providing a starting position and length.

---------------------------------------------------------------------------
**A49: (b)**

Note that the replacement string does not need to be the same length as the original string. For example:

```
>> str = "boat"
=> "boat"
>> str[1,2] = "uil"
=> "uil"
>> str
=> "built"
```

---------------------------------------------------------------------------
**A50: (b)**

Ruby's numeric objects define a method called `coerce` which attempts to convert objects into the same type for arithmetic operations. This method is not implemented by the `String` class, so a `TypeError` is raised.

Note that if the order was reversed (i.e. `"hi" * 5`), then the result would be `"hihihihihi"`. This is because `String` does define its own `*` operator, which is used when the string appears on the left hand side of the expression.

---------------------------------------------------------------------------

Ruby  Association  doesn’t  accept  liability  for  damages  incurred  as  a  result  of  use  this  prep  test. 



**Q48. Given the following:**

```
p "hello ruby world"[6,4]
```

**What is the correct result? (Choose one.)**

- (a) `"hello "`	
- (b) `"ruby"`
- (c) `" world"`
- (d) An error occurs at run-time.

---------------------------------------------------------------------------

**A1:** (a) and (b)

In Ruby, all objects have a logical value for use in conditional statements.

The objects `false` and `nil` are treated as
logically false, all other objects are treated as logically true.

---------------------------------------------------------------------------

**A2:** (c) and (e)

The complete list of reserved words as of Ruby 2.1 is listed below:

![](http://www.ruby.or.jp/en/certification/examination//index.data/ruby-keywords.png)

---------------------------------------------------------------------------

**A3:** (c)

Ruby variable names must begin with a lowercase letter or underscore, and may contain only letters, numbers, and underscore characters.

Variable names must not conflict with keywords (e.g. you cannot have a variable called `class`), but unambiguous names that contain reserved words are acceptable (i.e. both `classy` and `_class` are valid Ruby variable names)

---------------------------------------------------------------------------

**A4:** (a) and (b)

Single quoted string literals are simple, and are meant to represent raw sequences of characters.

Double quoted string literals are more complex, but offer extra features such as string interpolation (`#{...}`), where entire Ruby expressions can be evaluated and inserted into a string.

As a shortcut, `#$` is usable for inserting the contents of a global variable into a string. (Similarly, `#@` can be used with instance variables). This shortcut variant is less commonly used than the more general `#{...}` form.


---------------------------------------------------------------------------

**A5:** (c)

A leading zero in an integer literal indicates 'octal-mode' in Ruby, i.e. a number in base 8 format. However, all print functions in Ruby will output numeric values in base 10 by default.

Should you need to output numbers in something other than base 10, there are many different functions in Ruby for formatted numeric output (e.g. `String#%`, `Numeric#to_s(base)`, `Kernel#sprintf`)

---------------------------------------------------------------------------

**A6:** (b)

The ternary operator (`cond ? expr1 : expr2`) is a compact form of `if/else` which will return `expr1` if `cond` is true, otherwise will return `expr2`. It is most suitable for short statements that easily fit on a single line.

---------------------------------------------------------------------------

**A7:** (a)

Ruby `case` statements will select the first branch to match its `when` condition.

Because Ruby's two-dot range literal is an inclusive range, the end value is included as part of the range.

So although both `1..120` and `120..170` include `120`, the `when 1..120` branch is matched because it appears first in the case statement.

---------------------------------------------------------------------------

**A8:** (d)

Although local variables from the surrounding scope are accessible within blocks, block parameters themselves are always block-local variables. This means that when a block parameter has the same name as a local variable from the surrounding scope, within the block any references will refer to the block-local variable. This prevents accidental modification of variables from the outside scope due to naming collisions.

Defining block parameters with the same name as a local variable from the surrounding scope is considered an antipattern and may be a sign of an accidental programming error. To catch this problem, run `ruby` with the `-w` flag, and you will see warnings like `warning: shadowing outer local variable - item` wherever this problem occurs.

---------------------------------------------------------------------------

**A9:** (c)

The `Integer#times` method yields values starting at zero, up to one less than the specified integer.

Although block variables with the same name of local variables from the surrounding scope are shadowed (see `A8`), other local variables are accessible and can be modified. This is because Ruby blocks are _closures_.

---------------------------------------------------------------------------

**A10:** (c), (d)

The encoding _magic comment_ must appear as the first line of the file, unless a UNIX shebang line is present (in that case, the encoding line would be placed on the second line).

Both `coding: ...` and `encoding: ...` may be used to set the source file's encoding, and they work identically.

Setting the encoding for a source file affects only the contents of that file. In other words, it applies to things like string literals in the file, but does not automatically set encoding for things like reading from and to other files.

If no encoding comment is present in a file, the default encoding is set to UTF-8.

---------------------------------------------------------------------------

**A11:** (c)

`String#encoding` returns an `Encoding` object which also provides some other helpful methods (e.g. `Encoding#ascii_compatible?`)

---------------------------------------------------------------------------

**A12:** (b)

When a `coding:` comment is omitted, Ruby will use UTF-8 by default for its source encoding.

---------------------------------------------------------------------------

**A13:** (b)

In an `if/elsif/else` conditional statement, the first matching `if` or `elsif` branch will be executed. If none match, then the `else` branch will be run.

---------------------------------------------------------------------------

**A14.** (c)

When none of the `if` and `elsif` clauses of a conditional statement match, the `else` branch is run.

---------------------------------------------------------------------------
**A15: (d)**

Nearly every programming language has some sort of `if/elsif/else` structure, but they vary in the name they choose for `elsif`. This can be a source of confusion if you're coming to Ruby from another language, and the only solution is to memorize the specific term used in each language.

---------------------------------------------------------------------------
**A16: (a) and (c)**

Character classes (`[...]`) match any single character from within the brackets.

Alternatives (`...|...`) are used to match any one of many possible subexpressions.

The `\A` anchor matches the beginning of a string, and the `\z` anchor matches the end of a string.

_Note that the reason that (b) is not a correct answer is because its subexpressions are `\ARuby` and `ruby\z`, allowing matches for things like `Ruby123`_

---------------------------------------------------------------------------
**A17: (b)**

The expression `/\A[a-z][a-z]*\z/` could be described in words as "A string which begins with a lowercase letter, followed by zero or more additional lowercase letters and nothing else."

Here are some additional notes for understanding the other patterns in this question:

- The `*` quantifier matches a subexpression zero or more times.
- The `.` quantifier matches any character except a newline.
- The `^` inverts a character class, causing it to match anything except the named chars.

(see `A16` for a recap of other features that were already covered in that question)

---------------------------------------------------------------------------
**A18: (d)**

Constants can be redefined, but because this is usually a bad practice, a warning is displayed.

Because Ruby also uses constants for referencing module and class names, the constant redefinition warning can also help catch accidental naming collisions.

---------------------------------------------------------------------------
**A19. (b)**

No warning is shown because the constant is not being redefined; instead the object it references is being modified.

By convention, objects referenced by constants are usually treated as immutable. But there are certain rare cases where that convention would not apply.

---------------------------------------------------------------------------
**A20: (b) and (e)**

Some notes on Ruby variable naming rules:

- Global variables start with `$`.
- Class variables start with `@@`.
- Instance variables start with `@`.
- Local variables must begin with a lowercase letter or an underscore.
- The remaining characters in any variable type are limited to letters, numbers, and underscores.

---------------------------------------------------------------------------
**A21: (c)** 

In this example, both the `x` and `y` variables reference the same array object.

Because `Array#reject!` modifies its receiver, this means that it modifies the single array that is referenced by both variables.

---------------------------------------------------------------------------
**A22: (c)**

Some notes on `Array` operations:

- `shift` removes the first element of an array and returns its value.
- `pop` removes the last element of an array and returns its value
- `push` adds the specified element to the end of an array.

---------------------------------------------------------------------------
**A23: (b)**

The logical `||` and `&&` operators short-circuit, only executing the right side
of the expression if necessary.

The special `|` and `&` operators provided on Ruby's boolean objects do not short circuit, so the right side of the expression is always evaluated.

Note that all Ruby objects support the `||` and `&&` operators, but not all objects implement `|` and `&`.

---------------------------------------------------------------------------

**A24: (c)**

Although the `or` operator short circuits and the `n = true` expression is never executed, the `n` local variable is still statically declared. Therefore, the variable is present but its value is `nil`.

---------------------------------------------------------------------------
**A25: (a) and (d)**

This question illustrates two different ways of indexing a sub-array.

One approach is to use two integers, i.e. `x[1,3]`-- This means "get a subarray of length `3` starting at index `1`.

Another approach is to use a range, which generates a subarray based the index values within that range.

The simple form of using a range is something like `x[1..3]` which would give you a subarray starting at index `1` and ending at index `3`.

But Ruby also allows _negative_ indexing, which define indexes relative to the end of an array rather than the beginning.

Thus, `x[-4..-2]` is referring to the subarray starting from the 4th to the last position in the array, and continuing to the second-to-last position.

To clarify, here is a list of the index values for each position in the array from this question:

```
 x  [ 9,   7,   5,    3,    1]
 i    0    1    2     3     4
-i   -5   -4   -3    -2    -1
```

---------------------------------------------------------------------------

**A26: (d)**

`Array#join` returns a string that is created by converting each element 
in an array to a string and then combining them together with the 
specified separator.

---------------------------------------------------------------------------
**A27: (a)**

`String#to_i` attempts to parse an integer from a string starting from its first character, and continuing until the end of a valid number in a particular base. If a string does not begin with a valid number, `0` is returned.

By default, numbers are assumed to be in base 10, but other bases (from `2` to `36`) can be specified via a parameter. 

Note that while `"42A7".to_i` returns `42` because `A` is not a valid part of a base 10 number, `"42A7".to_i(16)` would extract the hexadecimal value `0x42A7`, which when converted to decimal would be equal to `17063`.

---------------------------------------------------------------------------
**A28. (b)**

`has_key?`, `key?`, `key?`, `member?` are all aliases for a single method which returns `true` if the given key is present in the hash, and returns `false` otherwise.

The `contain?` method is not defined by `Hash`.

---------------------------------------------------------------------------
**A29: (a) and (e)**

Some notes on array processing methods:

- In addition to `reject!` there is also `reject`, which returns a new array rather than modifying the original.
- Because there isn't a non-destructive form of `delete_if`, there is no `delete_if!` method. By convention Ruby only uses `!` at the end of the method when there are two features that work similarly but with one being more dangerous than the other.
- The `Array#slice` method works similarly to `Array#[]`, and is used for retrieving a specific value or subarray by index rather than filtering based on a condition. It does not accept a block.

---------------------------------------------------------------------------
**A30: (c)**

The `|` operator is equivalent to a set union. It returns a new array that is built by joining two arrays together, eliminating any duplicates while preserving order.

---------------------------------------------------------------------------
**A31: (d)**

The `&` operator is equivalent to a set intersection. It returns a new array that is made up of elements found in both arrays it operates on, while preserving order and eliminating duplicates.

---------------------------------------------------------------------------
**A32: (b)**

In a `begin/rescue/end` block... the first matched `rescue` statement will be executed.

Because `SomeOtherError` is a subclass of `SomeError`, it matches the `rescue SomeError` statement, and so that branch is what gets run.

In a real application, it is usually a good practice to attempt to match more specific errors before the more general errors that they inherit from (e.g. `rescue StandardError` would usually come last).

---------------------------------------------------------------------------
**A33: (c)**

Dividing by zero raises a `ZeroDivisionError` exception.

That exception is rescued, and a message is printed out. Then `exit(1)` tells Ruby to exit with an error code.

But because the `begin...end` expression has an `ensure` section, it is run before the interpreter exits.

The `ensure` clause is useful because it can be used to do cleanup even when some code raises an exception or tells Ruby to exit. It is often used for things like closing file handles, database connections, etc.

---------------------------------------------------------------------------
**A34: (e)** 

By default, all classes inherit from the `Object` class, whether or not they are explicit subclasses of some other class.

To create class hierarchies that do not inherit from `Object`, it is possible to explictly inherit from `BasicObject` instead, which has very few features built into it. But the use cases for doing so are uncommon.

---------------------------------------------------------------------------
**A35: (c)**

Class definitions can be re-opened and updated at any time, including Ruby core classes like `Object`.

Because all Ruby core objects (except `BasicObject`) inherit from the `Object` class, adding new methods to `Object` will make them available on all objects.

---------------------------------------------------------------------------
**A36: (c)**

Whenever the `new` method is called on a class, a new instance of that class is allocated and then the `initialize` method is called on that instance. This allows some setup code to be run as soon as the object is instantiated.

---------------------------------------------------------------------------
**A37: (d)**

The `new` method (defined by `Class`) is used to create new object instances.

---------------------------------------------------------------------------
**A38: (a)**

The `super` keyword invokes a method with the same name higher up the ancestry chain.

In this particular example, calling `Bar.new` causes `Bar#initialize` to run, which sets `@var = "banana"`. But then immediately after that, `super` is called, causing `Foo#initialize` to run. That method sets `@var = "apple"`, which explains the final result.

---------------------------------------------------------------------------
**A39: (c)**

`Array#delete` removes all elements from an array that are equal to the specified value.

For deleting a value at a particular index, see documentation for `Array#delete_at`.

For deleting values based on a condition, see documentation for  `Array#delete_if` (an alias for `reject!`).

---------------------------------------------------------------------------
**A40: (c)**

The `to_a` method uses the common naming convention for converting an object into an array, and is found throughout Ruby's collection classes.

Some objects also implement `to_ary`, which is used for implicit conversions. For example, `Array#flatten` will attempt to call `to_ary` on the elements within an array if it is present. But these use cases are uncommon.

---------------------------------------------------------------------------
**A41: (b)**

The `#find` method is defined by the `Enumerable` module. It returns the first element of the collection for which the block's result is not `false` or `nil`.

Note that `Enumerable#find` is also aliased as `Enumerable#detect`.

---------------------------------------------------------------------------
**A42: (a) and (c)**
The `sort_by` method maps the elements in a collection to a set of values via a block, and then sorts the elements of the collection in ascending order based on those values.

The `sort` method (when called without a block) sorts an array in ascending order directly based on the values of its elements. There is also a block form of `sort` which allows for element-by-element comparison.

Both `sort_by` and `sort` rely on the `<=>` operator to be defined in order to make comparisons between objects. Ruby's `Numeric` classes all implement this operator, but you can also define it for your own objects.

---------------------------------------------------------------------------
**A47: (b) and (c)**

Some additional notes:

`FileUtils.mv` from the _fileutils_ stdlib can be used to rename a directory.

`File.basename` is used for getting the last part of a file name from a path string. (e.g. `File.basename("long/path/to/something") #=> "something"`)

---------------------------------------------------------------------------
**A48:** (b)

Similar to the syntax for indexing subarrays (Q25), it is possible to index a substring by providing a starting position and length.

---------------------------------------------------------------------------
**A49: (b)**

Note that the replacement string does not need to be the same length as the original string. For example:

```
>> str = "boat"
=> "boat"
>> str[1,2] = "uil"
=> "uil"
>> str
=> "built"
```

---------------------------------------------------------------------------
**A50: (b)**

Ruby's numeric objects define a method called `coerce` which attempts to convert objects into the same type for arithmetic operations. This method is not implemented by the `String` class, so a `TypeError` is raised.

Note that if the order was reversed (i.e. `"hi" * 5`), then the result would be `"hihihihihi"`. This is because `String` does define its own `*` operator, which is used when the string appears on the left hand side of the expression.

---------------------------------------------------------------------------

Ruby  Association  doesn’t  accept  liability  for  damages  incurred  as  a  result  of  use  this  prep  test. 


**Q49:** 

```
Given the following:

str = "bat"
str[1,1] = "o"
p str

Which is the correct output? (Choose one.)
```

- (a) `"boo"`	
- (b) `"bot"`	
- (c) `"oat"`	
- (d) `"o"`

---------------------------------------------------------------------------

**A1:** (a) and (b)

In Ruby, all objects have a logical value for use in conditional statements.

The objects `false` and `nil` are treated as
logically false, all other objects are treated as logically true.

---------------------------------------------------------------------------

**A2:** (c) and (e)

The complete list of reserved words as of Ruby 2.1 is listed below:

![](http://www.ruby.or.jp/en/certification/examination//index.data/ruby-keywords.png)

---------------------------------------------------------------------------

**A3:** (c)

Ruby variable names must begin with a lowercase letter or underscore, and may contain only letters, numbers, and underscore characters.

Variable names must not conflict with keywords (e.g. you cannot have a variable called `class`), but unambiguous names that contain reserved words are acceptable (i.e. both `classy` and `_class` are valid Ruby variable names)

---------------------------------------------------------------------------

**A4:** (a) and (b)

Single quoted string literals are simple, and are meant to represent raw sequences of characters.

Double quoted string literals are more complex, but offer extra features such as string interpolation (`#{...}`), where entire Ruby expressions can be evaluated and inserted into a string.

As a shortcut, `#$` is usable for inserting the contents of a global variable into a string. (Similarly, `#@` can be used with instance variables). This shortcut variant is less commonly used than the more general `#{...}` form.


---------------------------------------------------------------------------

**A5:** (c)

A leading zero in an integer literal indicates 'octal-mode' in Ruby, i.e. a number in base 8 format. However, all print functions in Ruby will output numeric values in base 10 by default.

Should you need to output numbers in something other than base 10, there are many different functions in Ruby for formatted numeric output (e.g. `String#%`, `Numeric#to_s(base)`, `Kernel#sprintf`)

---------------------------------------------------------------------------

**A6:** (b)

The ternary operator (`cond ? expr1 : expr2`) is a compact form of `if/else` which will return `expr1` if `cond` is true, otherwise will return `expr2`. It is most suitable for short statements that easily fit on a single line.

---------------------------------------------------------------------------

**A7:** (a)

Ruby `case` statements will select the first branch to match its `when` condition.

Because Ruby's two-dot range literal is an inclusive range, the end value is included as part of the range.

So although both `1..120` and `120..170` include `120`, the `when 1..120` branch is matched because it appears first in the case statement.

---------------------------------------------------------------------------

**A8:** (d)

Although local variables from the surrounding scope are accessible within blocks, block parameters themselves are always block-local variables. This means that when a block parameter has the same name as a local variable from the surrounding scope, within the block any references will refer to the block-local variable. This prevents accidental modification of variables from the outside scope due to naming collisions.

Defining block parameters with the same name as a local variable from the surrounding scope is considered an antipattern and may be a sign of an accidental programming error. To catch this problem, run `ruby` with the `-w` flag, and you will see warnings like `warning: shadowing outer local variable - item` wherever this problem occurs.

---------------------------------------------------------------------------

**A9:** (c)

The `Integer#times` method yields values starting at zero, up to one less than the specified integer.

Although block variables with the same name of local variables from the surrounding scope are shadowed (see `A8`), other local variables are accessible and can be modified. This is because Ruby blocks are _closures_.

---------------------------------------------------------------------------

**A10:** (c), (d)

The encoding _magic comment_ must appear as the first line of the file, unless a UNIX shebang line is present (in that case, the encoding line would be placed on the second line).

Both `coding: ...` and `encoding: ...` may be used to set the source file's encoding, and they work identically.

Setting the encoding for a source file affects only the contents of that file. In other words, it applies to things like string literals in the file, but does not automatically set encoding for things like reading from and to other files.

If no encoding comment is present in a file, the default encoding is set to UTF-8.

---------------------------------------------------------------------------

**A11:** (c)

`String#encoding` returns an `Encoding` object which also provides some other helpful methods (e.g. `Encoding#ascii_compatible?`)

---------------------------------------------------------------------------

**A12:** (b)

When a `coding:` comment is omitted, Ruby will use UTF-8 by default for its source encoding.

---------------------------------------------------------------------------

**A13:** (b)

In an `if/elsif/else` conditional statement, the first matching `if` or `elsif` branch will be executed. If none match, then the `else` branch will be run.

---------------------------------------------------------------------------

**A14.** (c)

When none of the `if` and `elsif` clauses of a conditional statement match, the `else` branch is run.

---------------------------------------------------------------------------
**A15: (d)**

Nearly every programming language has some sort of `if/elsif/else` structure, but they vary in the name they choose for `elsif`. This can be a source of confusion if you're coming to Ruby from another language, and the only solution is to memorize the specific term used in each language.

---------------------------------------------------------------------------
**A16: (a) and (c)**

Character classes (`[...]`) match any single character from within the brackets.

Alternatives (`...|...`) are used to match any one of many possible subexpressions.

The `\A` anchor matches the beginning of a string, and the `\z` anchor matches the end of a string.

_Note that the reason that (b) is not a correct answer is because its subexpressions are `\ARuby` and `ruby\z`, allowing matches for things like `Ruby123`_

---------------------------------------------------------------------------
**A17: (b)**

The expression `/\A[a-z][a-z]*\z/` could be described in words as "A string which begins with a lowercase letter, followed by zero or more additional lowercase letters and nothing else."

Here are some additional notes for understanding the other patterns in this question:

- The `*` quantifier matches a subexpression zero or more times.
- The `.` quantifier matches any character except a newline.
- The `^` inverts a character class, causing it to match anything except the named chars.

(see `A16` for a recap of other features that were already covered in that question)

---------------------------------------------------------------------------
**A18: (d)**

Constants can be redefined, but because this is usually a bad practice, a warning is displayed.

Because Ruby also uses constants for referencing module and class names, the constant redefinition warning can also help catch accidental naming collisions.

---------------------------------------------------------------------------
**A19. (b)**

No warning is shown because the constant is not being redefined; instead the object it references is being modified.

By convention, objects referenced by constants are usually treated as immutable. But there are certain rare cases where that convention would not apply.

---------------------------------------------------------------------------
**A20: (b) and (e)**

Some notes on Ruby variable naming rules:

- Global variables start with `$`.
- Class variables start with `@@`.
- Instance variables start with `@`.
- Local variables must begin with a lowercase letter or an underscore.
- The remaining characters in any variable type are limited to letters, numbers, and underscores.

---------------------------------------------------------------------------
**A21: (c)** 

In this example, both the `x` and `y` variables reference the same array object.

Because `Array#reject!` modifies its receiver, this means that it modifies the single array that is referenced by both variables.

---------------------------------------------------------------------------
**A22: (c)**

Some notes on `Array` operations:

- `shift` removes the first element of an array and returns its value.
- `pop` removes the last element of an array and returns its value
- `push` adds the specified element to the end of an array.

---------------------------------------------------------------------------
**A23: (b)**

The logical `||` and `&&` operators short-circuit, only executing the right side
of the expression if necessary.

The special `|` and `&` operators provided on Ruby's boolean objects do not short circuit, so the right side of the expression is always evaluated.

Note that all Ruby objects support the `||` and `&&` operators, but not all objects implement `|` and `&`.

---------------------------------------------------------------------------

**A24: (c)**

Although the `or` operator short circuits and the `n = true` expression is never executed, the `n` local variable is still statically declared. Therefore, the variable is present but its value is `nil`.

---------------------------------------------------------------------------
**A25: (a) and (d)**

This question illustrates two different ways of indexing a sub-array.

One approach is to use two integers, i.e. `x[1,3]`-- This means "get a subarray of length `3` starting at index `1`.

Another approach is to use a range, which generates a subarray based the index values within that range.

The simple form of using a range is something like `x[1..3]` which would give you a subarray starting at index `1` and ending at index `3`.

But Ruby also allows _negative_ indexing, which define indexes relative to the end of an array rather than the beginning.

Thus, `x[-4..-2]` is referring to the subarray starting from the 4th to the last position in the array, and continuing to the second-to-last position.

To clarify, here is a list of the index values for each position in the array from this question:

```
 x  [ 9,   7,   5,    3,    1]
 i    0    1    2     3     4
-i   -5   -4   -3    -2    -1
```

---------------------------------------------------------------------------

**A26: (d)**

`Array#join` returns a string that is created by converting each element 
in an array to a string and then combining them together with the 
specified separator.

---------------------------------------------------------------------------
**A27: (a)**

`String#to_i` attempts to parse an integer from a string starting from its first character, and continuing until the end of a valid number in a particular base. If a string does not begin with a valid number, `0` is returned.

By default, numbers are assumed to be in base 10, but other bases (from `2` to `36`) can be specified via a parameter. 

Note that while `"42A7".to_i` returns `42` because `A` is not a valid part of a base 10 number, `"42A7".to_i(16)` would extract the hexadecimal value `0x42A7`, which when converted to decimal would be equal to `17063`.

---------------------------------------------------------------------------
**A28. (b)**

`has_key?`, `key?`, `key?`, `member?` are all aliases for a single method which returns `true` if the given key is present in the hash, and returns `false` otherwise.

The `contain?` method is not defined by `Hash`.

---------------------------------------------------------------------------
**A29: (a) and (e)**

Some notes on array processing methods:

- In addition to `reject!` there is also `reject`, which returns a new array rather than modifying the original.
- Because there isn't a non-destructive form of `delete_if`, there is no `delete_if!` method. By convention Ruby only uses `!` at the end of the method when there are two features that work similarly but with one being more dangerous than the other.
- The `Array#slice` method works similarly to `Array#[]`, and is used for retrieving a specific value or subarray by index rather than filtering based on a condition. It does not accept a block.

---------------------------------------------------------------------------
**A30: (c)**

The `|` operator is equivalent to a set union. It returns a new array that is built by joining two arrays together, eliminating any duplicates while preserving order.

---------------------------------------------------------------------------
**A31: (d)**

The `&` operator is equivalent to a set intersection. It returns a new array that is made up of elements found in both arrays it operates on, while preserving order and eliminating duplicates.

---------------------------------------------------------------------------
**A32: (b)**

In a `begin/rescue/end` block... the first matched `rescue` statement will be executed.

Because `SomeOtherError` is a subclass of `SomeError`, it matches the `rescue SomeError` statement, and so that branch is what gets run.

In a real application, it is usually a good practice to attempt to match more specific errors before the more general errors that they inherit from (e.g. `rescue StandardError` would usually come last).

---------------------------------------------------------------------------
**A33: (c)**

Dividing by zero raises a `ZeroDivisionError` exception.

That exception is rescued, and a message is printed out. Then `exit(1)` tells Ruby to exit with an error code.

But because the `begin...end` expression has an `ensure` section, it is run before the interpreter exits.

The `ensure` clause is useful because it can be used to do cleanup even when some code raises an exception or tells Ruby to exit. It is often used for things like closing file handles, database connections, etc.

---------------------------------------------------------------------------
**A34: (e)** 

By default, all classes inherit from the `Object` class, whether or not they are explicit subclasses of some other class.

To create class hierarchies that do not inherit from `Object`, it is possible to explictly inherit from `BasicObject` instead, which has very few features built into it. But the use cases for doing so are uncommon.

---------------------------------------------------------------------------
**A35: (c)**

Class definitions can be re-opened and updated at any time, including Ruby core classes like `Object`.

Because all Ruby core objects (except `BasicObject`) inherit from the `Object` class, adding new methods to `Object` will make them available on all objects.

---------------------------------------------------------------------------
**A36: (c)**

Whenever the `new` method is called on a class, a new instance of that class is allocated and then the `initialize` method is called on that instance. This allows some setup code to be run as soon as the object is instantiated.

---------------------------------------------------------------------------
**A37: (d)**

The `new` method (defined by `Class`) is used to create new object instances.

---------------------------------------------------------------------------
**A38: (a)**

The `super` keyword invokes a method with the same name higher up the ancestry chain.

In this particular example, calling `Bar.new` causes `Bar#initialize` to run, which sets `@var = "banana"`. But then immediately after that, `super` is called, causing `Foo#initialize` to run. That method sets `@var = "apple"`, which explains the final result.

---------------------------------------------------------------------------
**A39: (c)**

`Array#delete` removes all elements from an array that are equal to the specified value.

For deleting a value at a particular index, see documentation for `Array#delete_at`.

For deleting values based on a condition, see documentation for  `Array#delete_if` (an alias for `reject!`).

---------------------------------------------------------------------------
**A40: (c)**

The `to_a` method uses the common naming convention for converting an object into an array, and is found throughout Ruby's collection classes.

Some objects also implement `to_ary`, which is used for implicit conversions. For example, `Array#flatten` will attempt to call `to_ary` on the elements within an array if it is present. But these use cases are uncommon.

---------------------------------------------------------------------------
**A41: (b)**

The `#find` method is defined by the `Enumerable` module. It returns the first element of the collection for which the block's result is not `false` or `nil`.

Note that `Enumerable#find` is also aliased as `Enumerable#detect`.

---------------------------------------------------------------------------
**A42: (a) and (c)**
The `sort_by` method maps the elements in a collection to a set of values via a block, and then sorts the elements of the collection in ascending order based on those values.

The `sort` method (when called without a block) sorts an array in ascending order directly based on the values of its elements. There is also a block form of `sort` which allows for element-by-element comparison.

Both `sort_by` and `sort` rely on the `<=>` operator to be defined in order to make comparisons between objects. Ruby's `Numeric` classes all implement this operator, but you can also define it for your own objects.

---------------------------------------------------------------------------
**A47: (b) and (c)**

Some additional notes:

`FileUtils.mv` from the _fileutils_ stdlib can be used to rename a directory.

`File.basename` is used for getting the last part of a file name from a path string. (e.g. `File.basename("long/path/to/something") #=> "something"`)

---------------------------------------------------------------------------
**A48:** (b)

Similar to the syntax for indexing subarrays (Q25), it is possible to index a substring by providing a starting position and length.

---------------------------------------------------------------------------
**A49: (b)**

Note that the replacement string does not need to be the same length as the original string. For example:

```
>> str = "boat"
=> "boat"
>> str[1,2] = "uil"
=> "uil"
>> str
=> "built"
```

---------------------------------------------------------------------------
**A50: (b)**

Ruby's numeric objects define a method called `coerce` which attempts to convert objects into the same type for arithmetic operations. This method is not implemented by the `String` class, so a `TypeError` is raised.

Note that if the order was reversed (i.e. `"hi" * 5`), then the result would be `"hihihihihi"`. This is because `String` does define its own `*` operator, which is used when the string appears on the left hand side of the expression.

---------------------------------------------------------------------------

Ruby  Association  doesn’t  accept  liability  for  damages  incurred  as  a  result  of  use  this  prep  test. 


**Q50. Given the following:**

```
puts 5 * "hi"
```

**What is the correct result? (Choose one.)**

- (a) `"hihihihihi"`	
- (b) An error occurs at run-time.	
- (c) `"5hi"`	
- (d) `"5*hi"`

---------------------------------------------------------------------------

**A1:** (a) and (b)

In Ruby, all objects have a logical value for use in conditional statements.

The objects `false` and `nil` are treated as
logically false, all other objects are treated as logically true.

---------------------------------------------------------------------------

**A2:** (c) and (e)

The complete list of reserved words as of Ruby 2.1 is listed below:

![](http://www.ruby.or.jp/en/certification/examination//index.data/ruby-keywords.png)

---------------------------------------------------------------------------

**A3:** (c)

Ruby variable names must begin with a lowercase letter or underscore, and may contain only letters, numbers, and underscore characters.

Variable names must not conflict with keywords (e.g. you cannot have a variable called `class`), but unambiguous names that contain reserved words are acceptable (i.e. both `classy` and `_class` are valid Ruby variable names)

---------------------------------------------------------------------------

**A4:** (a) and (b)

Single quoted string literals are simple, and are meant to represent raw sequences of characters.

Double quoted string literals are more complex, but offer extra features such as string interpolation (`#{...}`), where entire Ruby expressions can be evaluated and inserted into a string.

As a shortcut, `#$` is usable for inserting the contents of a global variable into a string. (Similarly, `#@` can be used with instance variables). This shortcut variant is less commonly used than the more general `#{...}` form.


---------------------------------------------------------------------------

**A5:** (c)

A leading zero in an integer literal indicates 'octal-mode' in Ruby, i.e. a number in base 8 format. However, all print functions in Ruby will output numeric values in base 10 by default.

Should you need to output numbers in something other than base 10, there are many different functions in Ruby for formatted numeric output (e.g. `String#%`, `Numeric#to_s(base)`, `Kernel#sprintf`)

---------------------------------------------------------------------------

**A6:** (b)

The ternary operator (`cond ? expr1 : expr2`) is a compact form of `if/else` which will return `expr1` if `cond` is true, otherwise will return `expr2`. It is most suitable for short statements that easily fit on a single line.

---------------------------------------------------------------------------

**A7:** (a)

Ruby `case` statements will select the first branch to match its `when` condition.

Because Ruby's two-dot range literal is an inclusive range, the end value is included as part of the range.

So although both `1..120` and `120..170` include `120`, the `when 1..120` branch is matched because it appears first in the case statement.

---------------------------------------------------------------------------

**A8:** (d)

Although local variables from the surrounding scope are accessible within blocks, block parameters themselves are always block-local variables. This means that when a block parameter has the same name as a local variable from the surrounding scope, within the block any references will refer to the block-local variable. This prevents accidental modification of variables from the outside scope due to naming collisions.

Defining block parameters with the same name as a local variable from the surrounding scope is considered an antipattern and may be a sign of an accidental programming error. To catch this problem, run `ruby` with the `-w` flag, and you will see warnings like `warning: shadowing outer local variable - item` wherever this problem occurs.

---------------------------------------------------------------------------

**A9:** (c)

The `Integer#times` method yields values starting at zero, up to one less than the specified integer.

Although block variables with the same name of local variables from the surrounding scope are shadowed (see `A8`), other local variables are accessible and can be modified. This is because Ruby blocks are _closures_.

---------------------------------------------------------------------------

**A10:** (c), (d)

The encoding _magic comment_ must appear as the first line of the file, unless a UNIX shebang line is present (in that case, the encoding line would be placed on the second line).

Both `coding: ...` and `encoding: ...` may be used to set the source file's encoding, and they work identically.

Setting the encoding for a source file affects only the contents of that file. In other words, it applies to things like string literals in the file, but does not automatically set encoding for things like reading from and to other files.

If no encoding comment is present in a file, the default encoding is set to UTF-8.

---------------------------------------------------------------------------

**A11:** (c)

`String#encoding` returns an `Encoding` object which also provides some other helpful methods (e.g. `Encoding#ascii_compatible?`)

---------------------------------------------------------------------------

**A12:** (b)

When a `coding:` comment is omitted, Ruby will use UTF-8 by default for its source encoding.

---------------------------------------------------------------------------

**A13:** (b)

In an `if/elsif/else` conditional statement, the first matching `if` or `elsif` branch will be executed. If none match, then the `else` branch will be run.

---------------------------------------------------------------------------

**A14.** (c)

When none of the `if` and `elsif` clauses of a conditional statement match, the `else` branch is run.

---------------------------------------------------------------------------
**A15: (d)**

Nearly every programming language has some sort of `if/elsif/else` structure, but they vary in the name they choose for `elsif`. This can be a source of confusion if you're coming to Ruby from another language, and the only solution is to memorize the specific term used in each language.

---------------------------------------------------------------------------
**A16: (a) and (c)**

Character classes (`[...]`) match any single character from within the brackets.

Alternatives (`...|...`) are used to match any one of many possible subexpressions.

The `\A` anchor matches the beginning of a string, and the `\z` anchor matches the end of a string.

_Note that the reason that (b) is not a correct answer is because its subexpressions are `\ARuby` and `ruby\z`, allowing matches for things like `Ruby123`_

---------------------------------------------------------------------------
**A17: (b)**

The expression `/\A[a-z][a-z]*\z/` could be described in words as "A string which begins with a lowercase letter, followed by zero or more additional lowercase letters and nothing else."

Here are some additional notes for understanding the other patterns in this question:

- The `*` quantifier matches a subexpression zero or more times.
- The `.` quantifier matches any character except a newline.
- The `^` inverts a character class, causing it to match anything except the named chars.

(see `A16` for a recap of other features that were already covered in that question)

---------------------------------------------------------------------------
**A18: (d)**

Constants can be redefined, but because this is usually a bad practice, a warning is displayed.

Because Ruby also uses constants for referencing module and class names, the constant redefinition warning can also help catch accidental naming collisions.

---------------------------------------------------------------------------
**A19. (b)**

No warning is shown because the constant is not being redefined; instead the object it references is being modified.

By convention, objects referenced by constants are usually treated as immutable. But there are certain rare cases where that convention would not apply.

---------------------------------------------------------------------------
**A20: (b) and (e)**

Some notes on Ruby variable naming rules:

- Global variables start with `$`.
- Class variables start with `@@`.
- Instance variables start with `@`.
- Local variables must begin with a lowercase letter or an underscore.
- The remaining characters in any variable type are limited to letters, numbers, and underscores.

---------------------------------------------------------------------------
**A21: (c)** 

In this example, both the `x` and `y` variables reference the same array object.

Because `Array#reject!` modifies its receiver, this means that it modifies the single array that is referenced by both variables.

---------------------------------------------------------------------------
**A22: (c)**

Some notes on `Array` operations:

- `shift` removes the first element of an array and returns its value.
- `pop` removes the last element of an array and returns its value
- `push` adds the specified element to the end of an array.

---------------------------------------------------------------------------
**A23: (b)**

The logical `||` and `&&` operators short-circuit, only executing the right side
of the expression if necessary.

The special `|` and `&` operators provided on Ruby's boolean objects do not short circuit, so the right side of the expression is always evaluated.

Note that all Ruby objects support the `||` and `&&` operators, but not all objects implement `|` and `&`.

---------------------------------------------------------------------------

**A24: (c)**

Although the `or` operator short circuits and the `n = true` expression is never executed, the `n` local variable is still statically declared. Therefore, the variable is present but its value is `nil`.

---------------------------------------------------------------------------
**A25: (a) and (d)**

This question illustrates two different ways of indexing a sub-array.

One approach is to use two integers, i.e. `x[1,3]`-- This means "get a subarray of length `3` starting at index `1`.

Another approach is to use a range, which generates a subarray based the index values within that range.

The simple form of using a range is something like `x[1..3]` which would give you a subarray starting at index `1` and ending at index `3`.

But Ruby also allows _negative_ indexing, which define indexes relative to the end of an array rather than the beginning.

Thus, `x[-4..-2]` is referring to the subarray starting from the 4th to the last position in the array, and continuing to the second-to-last position.

To clarify, here is a list of the index values for each position in the array from this question:

```
 x  [ 9,   7,   5,    3,    1]
 i    0    1    2     3     4
-i   -5   -4   -3    -2    -1
```

---------------------------------------------------------------------------

**A26: (d)**

`Array#join` returns a string that is created by converting each element 
in an array to a string and then combining them together with the 
specified separator.

---------------------------------------------------------------------------
**A27: (a)**

`String#to_i` attempts to parse an integer from a string starting from its first character, and continuing until the end of a valid number in a particular base. If a string does not begin with a valid number, `0` is returned.

By default, numbers are assumed to be in base 10, but other bases (from `2` to `36`) can be specified via a parameter. 

Note that while `"42A7".to_i` returns `42` because `A` is not a valid part of a base 10 number, `"42A7".to_i(16)` would extract the hexadecimal value `0x42A7`, which when converted to decimal would be equal to `17063`.

---------------------------------------------------------------------------
**A28. (b)**

`has_key?`, `key?`, `key?`, `member?` are all aliases for a single method which returns `true` if the given key is present in the hash, and returns `false` otherwise.

The `contain?` method is not defined by `Hash`.

---------------------------------------------------------------------------
**A29: (a) and (e)**

Some notes on array processing methods:

- In addition to `reject!` there is also `reject`, which returns a new array rather than modifying the original.
- Because there isn't a non-destructive form of `delete_if`, there is no `delete_if!` method. By convention Ruby only uses `!` at the end of the method when there are two features that work similarly but with one being more dangerous than the other.
- The `Array#slice` method works similarly to `Array#[]`, and is used for retrieving a specific value or subarray by index rather than filtering based on a condition. It does not accept a block.

---------------------------------------------------------------------------
**A30: (c)**

The `|` operator is equivalent to a set union. It returns a new array that is built by joining two arrays together, eliminating any duplicates while preserving order.

---------------------------------------------------------------------------
**A31: (d)**

The `&` operator is equivalent to a set intersection. It returns a new array that is made up of elements found in both arrays it operates on, while preserving order and eliminating duplicates.

---------------------------------------------------------------------------
**A32: (b)**

In a `begin/rescue/end` block... the first matched `rescue` statement will be executed.

Because `SomeOtherError` is a subclass of `SomeError`, it matches the `rescue SomeError` statement, and so that branch is what gets run.

In a real application, it is usually a good practice to attempt to match more specific errors before the more general errors that they inherit from (e.g. `rescue StandardError` would usually come last).

---------------------------------------------------------------------------
**A33: (c)**

Dividing by zero raises a `ZeroDivisionError` exception.

That exception is rescued, and a message is printed out. Then `exit(1)` tells Ruby to exit with an error code.

But because the `begin...end` expression has an `ensure` section, it is run before the interpreter exits.

The `ensure` clause is useful because it can be used to do cleanup even when some code raises an exception or tells Ruby to exit. It is often used for things like closing file handles, database connections, etc.

---------------------------------------------------------------------------
**A34: (e)** 

By default, all classes inherit from the `Object` class, whether or not they are explicit subclasses of some other class.

To create class hierarchies that do not inherit from `Object`, it is possible to explictly inherit from `BasicObject` instead, which has very few features built into it. But the use cases for doing so are uncommon.

---------------------------------------------------------------------------
**A35: (c)**

Class definitions can be re-opened and updated at any time, including Ruby core classes like `Object`.

Because all Ruby core objects (except `BasicObject`) inherit from the `Object` class, adding new methods to `Object` will make them available on all objects.

---------------------------------------------------------------------------
**A36: (c)**

Whenever the `new` method is called on a class, a new instance of that class is allocated and then the `initialize` method is called on that instance. This allows some setup code to be run as soon as the object is instantiated.

---------------------------------------------------------------------------
**A37: (d)**

The `new` method (defined by `Class`) is used to create new object instances.

---------------------------------------------------------------------------
**A38: (a)**

The `super` keyword invokes a method with the same name higher up the ancestry chain.

In this particular example, calling `Bar.new` causes `Bar#initialize` to run, which sets `@var = "banana"`. But then immediately after that, `super` is called, causing `Foo#initialize` to run. That method sets `@var = "apple"`, which explains the final result.

---------------------------------------------------------------------------
**A39: (c)**

`Array#delete` removes all elements from an array that are equal to the specified value.

For deleting a value at a particular index, see documentation for `Array#delete_at`.

For deleting values based on a condition, see documentation for  `Array#delete_if` (an alias for `reject!`).

---------------------------------------------------------------------------
**A40: (c)**

The `to_a` method uses the common naming convention for converting an object into an array, and is found throughout Ruby's collection classes.

Some objects also implement `to_ary`, which is used for implicit conversions. For example, `Array#flatten` will attempt to call `to_ary` on the elements within an array if it is present. But these use cases are uncommon.

---------------------------------------------------------------------------
**A41: (b)**

The `#find` method is defined by the `Enumerable` module. It returns the first element of the collection for which the block's result is not `false` or `nil`.

Note that `Enumerable#find` is also aliased as `Enumerable#detect`.

---------------------------------------------------------------------------
**A42: (a) and (c)**
The `sort_by` method maps the elements in a collection to a set of values via a block, and then sorts the elements of the collection in ascending order based on those values.

The `sort` method (when called without a block) sorts an array in ascending order directly based on the values of its elements. There is also a block form of `sort` which allows for element-by-element comparison.

Both `sort_by` and `sort` rely on the `<=>` operator to be defined in order to make comparisons between objects. Ruby's `Numeric` classes all implement this operator, but you can also define it for your own objects.

---------------------------------------------------------------------------
**A47: (b) and (c)**

Some additional notes:

`FileUtils.mv` from the _fileutils_ stdlib can be used to rename a directory.

`File.basename` is used for getting the last part of a file name from a path string. (e.g. `File.basename("long/path/to/something") #=> "something"`)

---------------------------------------------------------------------------
**A48:** (b)

Similar to the syntax for indexing subarrays (Q25), it is possible to index a substring by providing a starting position and length.

---------------------------------------------------------------------------
**A49: (b)**

Note that the replacement string does not need to be the same length as the original string. For example:

```
>> str = "boat"
=> "boat"
>> str[1,2] = "uil"
=> "uil"
>> str
=> "built"
```

---------------------------------------------------------------------------
**A50: (b)**

Ruby's numeric objects define a method called `coerce` which attempts to convert objects into the same type for arithmetic operations. This method is not implemented by the `String` class, so a `TypeError` is raised.

Note that if the order was reversed (i.e. `"hi" * 5`), then the result would be `"hihihihihi"`. This is because `String` does define its own `*` operator, which is used when the string appears on the left hand side of the expression.

---------------------------------------------------------------------------

Ruby  Association  doesn’t  accept  liability  for  damages  incurred  as  a  result  of  use  this  prep  test. 
