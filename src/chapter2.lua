--[[
Lua是动态类型语言，变量不要类型定义。
Lua中有8个基本类型分别为：nil、boolean、number、string、userdata、function、thread和table。
函数type可以测试给定变量或者值的类型。
--]]
print(type("Hello world"))      --> string
print(type(10.4*3))             --> number
print(type(print))              --> function
print(type(type))               --> function
print(type(true))               --> boolean
print(type(nil))                --> nil
print(type(X))                  --> nil
print(type(type(X)))            --> string

--变量没有预定义的类型，每一个变量都可能包含任一种类型的值。
print(type(a))    --> nil   ('a' is not initialized)
a = 10
print(type(a))    --> number
a = "a string!!"
print(type(a))    --> string
a = print         -- yes, this is valid!
print(type(a))    --> function
a(type(a))        --> function
--注意上面最后两行，一般情况下同一变量代表不同类型的值会造成混乱，最好不要用，但是特殊情况下可以带来便利，比如nil。

--Nil类型只有一个值nil，当一个全局变量没有被赋值以前默认值为nil；给全局变量赋值为nil可以删除该变量。
--Boolean类型只有两个值true和false。但要注意Lua中所有的值都可以作为条件。在控制结构的条件中除了false和nil为假，其他值都为真。所以Lua认为0和空串都是真。
--Number类型，表示实数，Lua里面没有整数。
--String类型，指字符的序列。Lua中字符串是不可以修改的，你可以创建一个新的变量存放你要的字符串，如下：

a = "one string"
b = string.gsub(a, "one", "another")   -- change string parts
print(a)          --> one string
print(b)          --> another string

--可以使用单引号或者双引号表示字符串
a = "a line"
b = 'another line'

--运行时，Lua会自动在string和numbers之间自动进行类型转换，当一个字符串使用算术操作符时，string就会被转成数字。
print("10" + 1)             --> 11
print("10 + 1")             --> 10 + 1
--print("hello" + 1)          -- ERROR (cannot convert "hello")

print(10 .. 20)      --> 1020
--..在Lua中是字符串连接符，当在一个数字后面写..时，必须加上空格以防止被解释错。

--尽管字符串和数字可以自动转换，但两者是不同的，像10 == "10"这样的比较永远都是错的。如果需要显式将string转成数字可以使用函数tonumber()，如果string不是正确的数字该函数将返回nil。
line = io.read()         -- read a line
n = tonumber(line)       -- try to convert it to a number
if n == nil then
    error(line .. " is not a valid number")
else
    print(n*2)
end

--反之,可以调用tostring()将数字转成字符串，这种转换一直有效：
print(tostring(10) == "10")     --> true
print(10 .. "" == "10")         --> true

























