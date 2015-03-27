--[[
Lua�Ƕ�̬�������ԣ�������Ҫ���Ͷ��塣
Lua����8���������ͷֱ�Ϊ��nil��boolean��number��string��userdata��function��thread��table��
����type���Բ��Ը�����������ֵ�����͡�
--]]
print(type("Hello world"))      --> string
print(type(10.4*3))             --> number
print(type(print))              --> function
print(type(type))               --> function
print(type(true))               --> boolean
print(type(nil))                --> nil
print(type(X))                  --> nil
print(type(type(X)))            --> string

--����û��Ԥ��������ͣ�ÿһ�����������ܰ�����һ�����͵�ֵ��
print(type(a))    --> nil   ('a' is not initialized)
a = 10
print(type(a))    --> number
a = "a string!!"
print(type(a))    --> string
a = print         -- yes, this is valid!
print(type(a))    --> function
a(type(a))        --> function
--ע������������У�һ�������ͬһ��������ͬ���͵�ֵ����ɻ��ң���ò�Ҫ�ã�������������¿��Դ�������������nil��

--Nil����ֻ��һ��ֵnil����һ��ȫ�ֱ���û�б���ֵ��ǰĬ��ֵΪnil����ȫ�ֱ�����ֵΪnil����ɾ���ñ�����
--Boolean����ֻ������ֵtrue��false����Ҫע��Lua�����е�ֵ��������Ϊ�������ڿ��ƽṹ�������г���false��nilΪ�٣�����ֵ��Ϊ�档����Lua��Ϊ0�Ϳմ������档
--Number���ͣ���ʾʵ����Lua����û��������
--String���ͣ�ָ�ַ������С�Lua���ַ����ǲ������޸ĵģ�����Դ���һ���µı��������Ҫ���ַ��������£�

a = "one string"
b = string.gsub(a, "one", "another")   -- change string parts
print(a)          --> one string
print(b)          --> another string

--����ʹ�õ����Ż���˫���ű�ʾ�ַ���
a = "a line"
b = 'another line'

--����ʱ��Lua���Զ���string��numbers֮���Զ���������ת������һ���ַ���ʹ������������ʱ��string�ͻᱻת�����֡�
print("10" + 1)             --> 11
print("10 + 1")             --> 10 + 1
--print("hello" + 1)          -- ERROR (cannot convert "hello")

print(10 .. 20)      --> 1020
--..��Lua�����ַ������ӷ�������һ�����ֺ���д..ʱ��������Ͽո��Է�ֹ�����ʹ�

--�����ַ��������ֿ����Զ�ת�����������ǲ�ͬ�ģ���10 == "10"�����ıȽ���Զ���Ǵ�ġ������Ҫ��ʽ��stringת�����ֿ���ʹ�ú���tonumber()�����string������ȷ�����ָú���������nil��
line = io.read()         -- read a line
n = tonumber(line)       -- try to convert it to a number
if n == nil then
    error(line .. " is not a valid number")
else
    print(n*2)
end

--��֮,���Ե���tostring()������ת���ַ���������ת��һֱ��Ч��
print(tostring(10) == "10")     --> true
print(10 .. "" == "10")         --> true

























