# Ruby Association Certified Ruby Examination Silver Sample Questions

[Answers](silver_answers.md)

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

