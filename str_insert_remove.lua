function insert(oneStr,i,midStr)
    return oneStr:sub(1,i-1) .. midStr .. oneStr:sub(i,-1)
end

--移除字符串中的一部分,使用"起始位置","长度",创建新的字符串
function remove(str,index,len)
    return str:sub(1,index-1) .. str:sub(index+len,-1)
end



print(insert("hello world",1,"start:"))
print(insert("hello world",7,"small "))

print(remove("hello world",7,4))