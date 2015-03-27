--  赋值语句
--  Lua可以对多个变量同时赋值，变量列表和值列表的各个元素用逗号分开，赋值语句右边的值会依次赋给左边的变量。
x = 1
y = 4
x, y = y,x -- swap 'x' for 'y'
print(x)    --> 4
print(y)    --> 1

--  当变量个数和值的个数不一致时，Lua会一直以变量个数为基础采取以下策略：
--  a. 变量个数 > 值的个数             按变量个数补足nil
--  b. 变量个数 < 值的个数             多余的值会被忽略

a, b, c = 0, 1
print(a, b, c)             --> 0   1   nil
 
a, b = a+1, b+1, b+2     -- value of b+2 is ignored
print(a, b)               --> 1   2
 
a, b, c = 0
print(a, b, c)             --> 0   nil   nil

--  多值赋值经常用来交换变量，或将函数调用返回给变量：
--  a, b = f()
--  f()返回两个值，第一个赋给a，第二个赋给b。

--  局部变量与代码块（block），使用local来创建局部变量
x = 10
local i = 1
while i <= 10 do
    local x = i * 2
    print(x)
    i = i + 1
end

if i > 20 then
    local x              -- local to the "then" body
    x = 20
    print(x + 2)
else
    print(x)             --> 10  (全局变量)
end
 
print(x)                 --> 10  (全局变量)

--[[
      注意，如果在交互模式下上面的例子可能不能输出期望的结果，因为第二句local i=1是一个完整的chunk。
      在交互模式下执行完这一句后，Lua将开始一个新的chunk，这样第二句的i已经超出了他的有效范围。
      可以将这段代码放在do..end（相当于c/c++的{}）块中。
      应该尽可能的使用局部变量，有两个好处：
      1. 避免命名冲突
      2. 访问局部变量的速度比全局变量更快.
      我们给block划定一个明确的界限：do..end内的部分。当你想更好的控制局部变量的作用范围的时候这是很有用的。
--]]
a = 3
b = 5
c = 2
do
    local a2 = 2*a
    local d = b^2 - 4*a*c
    x1 = (-b + d)/a2
    x2 = (-b - d)/a2
end            -- scope of 'a2' and 'd' ends here
 
print(x1, x2)

--[[
            条件控制语句
if语句，有三种形式：
    if conditions then
        then-part
    end;
    ************************
    if conditions then
        then-part
    else
        else-part
    end;
    ************************
    if conditions then
        then-part
    elseif conditions then
        elseif-part
    ..            --->多个elseif
    else
        else-part
    end;


--]]

-- while 循环的两种方式
print("-----while 循环-------")
i = 0
while i < 3 do
    print(i)
    i = i + 1
end
print("-----while 循环-------")
i = 0
repeat
  print(i)
  i = i + 1
until i >= 3

--[[ for 循环
    一、数值for循环
  for var=exp1, exp2, exp3 do
      loop-part
  end
  for将用exp3作为step从exp1（初始值）到exp2（终止值），执行loop-part。其中exp3可以省略，默认step=1
    注意：
    1. 三个表达式只会被计算一次，并且是在循环开始前。
    2. 控制变量var是局部变量自动被声明,并且只在循环内有效.
    3. 循环过程中不要改变控制变量的值，那样做的结果是不可预知的。如果要退出循环，使用break语句。
    
  二、泛型for循环
    
--]]
print("-----for 循环-------")
for i = 1, 5 do
    if i == 3 then
      print("我可以退出了")
      break
    end
    print(i)
end
print("-----for 循环-------")
array = {["a"] = 1, ["b"] = 2, ["c"] = 3}
for i,v in pairs(array) do 
    print(i .. '=' .. v)
end
print("-----for 循环-------")
array = {1, 2, 3}
for k in pairs(array) do 
  print(k) 
end









