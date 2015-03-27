--  ��ֵ���
--  Lua���ԶԶ������ͬʱ��ֵ�������б��ֵ�б�ĸ���Ԫ���ö��ŷֿ�����ֵ����ұߵ�ֵ�����θ�����ߵı�����
x = 1
y = 4
x, y = y,x -- swap 'x' for 'y'
print(x)    --> 4
print(y)    --> 1

--  ������������ֵ�ĸ�����һ��ʱ��Lua��һֱ�Ա�������Ϊ������ȡ���²��ԣ�
--  a. �������� > ֵ�ĸ���             ��������������nil
--  b. �������� < ֵ�ĸ���             �����ֵ�ᱻ����

a, b, c = 0, 1
print(a, b, c)             --> 0   1   nil
 
a, b = a+1, b+1, b+2     -- value of b+2 is ignored
print(a, b)               --> 1   2
 
a, b, c = 0
print(a, b, c)             --> 0   nil   nil

--  ��ֵ��ֵ�������������������򽫺������÷��ظ�������
--  a, b = f()
--  f()��������ֵ����һ������a���ڶ�������b��

--  �ֲ����������飨block����ʹ��local�������ֲ�����
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
    print(x)             --> 10  (ȫ�ֱ���)
end
 
print(x)                 --> 10  (ȫ�ֱ���)

--[[
      ע�⣬����ڽ���ģʽ����������ӿ��ܲ�����������Ľ������Ϊ�ڶ���local i=1��һ��������chunk��
      �ڽ���ģʽ��ִ������һ���Lua����ʼһ���µ�chunk�������ڶ����i�Ѿ�������������Ч��Χ��
      ���Խ���δ������do..end���൱��c/c++��{}�����С�
      Ӧ�þ����ܵ�ʹ�þֲ��������������ô���
      1. ����������ͻ
      2. ���ʾֲ��������ٶȱ�ȫ�ֱ�������.
      ���Ǹ�block����һ����ȷ�Ľ��ޣ�do..end�ڵĲ��֡���������õĿ��ƾֲ����������÷�Χ��ʱ�����Ǻ����õġ�
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
            �����������
if��䣬��������ʽ��
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
    ..            --->���elseif
    else
        else-part
    end;


--]]

-- while ѭ�������ַ�ʽ
print("-----while ѭ��-------")
i = 0
while i < 3 do
    print(i)
    i = i + 1
end
print("-----while ѭ��-------")
i = 0
repeat
  print(i)
  i = i + 1
until i >= 3

--[[ for ѭ��
    һ����ֵforѭ��
  for var=exp1, exp2, exp3 do
      loop-part
  end
  for����exp3��Ϊstep��exp1����ʼֵ����exp2����ֵֹ����ִ��loop-part������exp3����ʡ�ԣ�Ĭ��step=1
    ע�⣺
    1. �������ʽֻ�ᱻ����һ�Σ���������ѭ����ʼǰ��
    2. ���Ʊ���var�Ǿֲ������Զ�������,����ֻ��ѭ������Ч.
    3. ѭ�������в�Ҫ�ı���Ʊ�����ֵ���������Ľ���ǲ���Ԥ֪�ġ����Ҫ�˳�ѭ����ʹ��break��䡣
    
  ��������forѭ��
    
--]]
print("-----for ѭ��-------")
for i = 1, 5 do
    if i == 3 then
      print("�ҿ����˳���")
      break
    end
    print(i)
end
print("-----for ѭ��-------")
array = {["a"] = 1, ["b"] = 2, ["c"] = 3}
for i,v in pairs(array) do 
    print(i .. '=' .. v)
end
print("-----for ѭ��-------")
array = {1, 2, 3}
for k in pairs(array) do 
  print(k) 
end









