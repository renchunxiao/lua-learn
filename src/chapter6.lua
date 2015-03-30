function newCounter()
    local i = 0
    return function()     -- anonymous function
       i = i + 1
        return i
    end
end
a = newCounter()
print(a())
print(a()
