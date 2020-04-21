function concat(t)
    --表的长度
    local len = len or #t
    --长度的奇偶属性
    local isOdd = isOdd or true
    --简单二分优化,直到长度len为1
    repeat
        --判断表是否是奇数
        if len%2 == 1 then
            isOdd = true
            len = len -1
        else
            isOdd = false
        end


        for i = 1,len/2 do
            t[i] = t[i*2-1] .. t[i*2]
        end

        if isOdd then
            t[len/2 + 1] = t[len + 1]
            len = len/2 + 1
        else
            len = len/2
        end
    until len == 1

    --循环完毕,表长度为1,返回这个唯一的元素
    return t[1]
end

function test(num)
    local t = t or {}
    for i = 1,num do
        t[i] = "a"
    end

    print("开始测试自定义函数concat")
    --制作一个副本,因为自定义的函数会消耗一个表
    t1 = table.move(t,1,#t,1,{})
    s_time = os.clock()
    str1 = concat(t1)
    e_time = os.clock()
    print("用时: ",e_time - s_time,#str1)

    print("-------------------")
    print("测试系统表的标准库函数table.concat()")
    t2 = table.move(t,1,#t,1,{})
    s_time = os.clock()
    str2 = table.concat(t2)
    e_time = os.clock()
    print("用时: ",e_time - s_time,#str2)

end

test(100000000)