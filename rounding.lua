function roundingF(x)
    --use math.floor,四舍五入
    return math.floor(x + 0.5)
end

function roundingC(x)
    --use math.ceil,四舍五不入
    return math.ceil(x - 0.5)
end

--[[
四舍五入时,上面的方法在数值非常大时,会以浮点值表示,四舍五入会以不可控的方式取整.整改方案如下
--]]
function roundingF(x)
    local f = math.floor(x)
    if x == f then return f
    else return math.floor(x + 0.5)
    end
end

--[[
无偏取整(就是当数据是几点五时,比如2.5/3.5等,都向最近的偶数取整),向最近的偶数取整;表达式x+0.5为奇数的结果是不正确的;表达式x+0.5为奇数等价于x%2==0.5
--]]
function round(x)
    local f = math.floor(x)
    if  x == f  or  -- 处理大整型数据
        x % 2 == 0.5 then --处理无偏取整
        return f 
    else 
        return math.floor(x + 0.5)
    end
end

