--Lua中的表达式包括数字常量、字符串常量、变量、一元和二元运算符、函数调用。还可以是非传统的函数定义和表构造

--二元运算符：+ - * / ^  (加减乘除幂)
--一元运算符：-  (负值)
--这些运算符的操作数都是实数。

--关系运算符： <      >      <=     >=     ==     ~=    注意不等于使用“~=”
--  这些操作符返回结果为false或者true；
--  ==和~=比较两个值，如果两个值类型不同，Lua认为两者不同；
--  nil只和自己相等。Lua通过引用比较tables、userdata、functions。也就是说当且仅当两者表示同一个对象时相等。
a = {}; a.x = 1; a.y = 0;
b = {}; b.x = 1; b.y = 0;
c = a
print(a==c)
print(a~=b)

--Lua比较数字按传统的数字大小进行，比较字符串按字母的顺序进行，但是字母顺序依赖于本地环境。
--当比较不同类型的值的时候要特别注意：
print("0" == 0)       -- false
print(2 < 15)         -- true
print("2" < "15")     -- false (alphabetical order!)
--为了避免不一致的结果，混合比较数字和字符串，Lua会报错，比如：2 < "15"

--逻辑运算符 and or not
--逻辑运算符认为false和nil是假（false），其他为真，0也是true.
--and和or的运算结果不是true和false，而是和它的两个操作数相关。
--  a and b       -- 如果a为false，则返回a，否则返回b
--  a or  b        -- 如果a为true，则返回a，否则返回b
print(4 and 5)           --> 5
print(nil and 13)        --> nil
print(false and 13)      --> false
print(4 or 5)            --> 4
print(false or 5)        --> 5

--  一个很实用的技巧：如果x为false或者nil则给x赋初始值v
x = x or v
--  等价于
if not x then
    x = v
end
--  and的优先级比or高。

--C语言中的三元运算符
--  a ? b : c
--在Lua中可以这样实现：
--  (a and b) or c
 
--not的结果只返回false或者true
print(not nil)           --> true
print(not false)         --> true
print(not 0)             --> false
print(not not nil)       --> false

--运算符优先级
--[[从高到低的顺序：
    ^      幂运算
    not    - (unary)
    *      /
    +      -
    ..
    <      >      <=     >=     ~=     ==
    and
    or
    除了^和..外所有的二元运算符都是左连接的。建议使用括号更加清晰。
    a+i < b/2+1          <==>       (a+i) < ((b/2)+1)
    5+x^2*8              <==>       5+((x^2)*8)
    a < y and y <= z     <==>       (a < y) and (y <= z)
    -x^2                 <==>       -(x^2)
    x^y^z                <==>       x^(y^z)
--]]

