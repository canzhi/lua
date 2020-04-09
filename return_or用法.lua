function cond2int(x)
    -- 判断一个数是能够转为整数
    --[[
    if math.tointeger(x) then return math.tointeger(x)
    else return x
    end
    --]]
    --三元表达式
    --return math.tointeger(x) and math.tointeger(x) or x
    -- x and x 等价于 x
    -- x or v 当x~=nil,表达式为v;否则表达式为x
    return math.tointeger(x) or x
end


print(cond2int(nil))