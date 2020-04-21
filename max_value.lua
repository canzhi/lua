function maximum(a)
    local mi = mi or 1
    local m = m or a[mi]
    for i = 2,#a do
        if a[i] > m then
            mi = i
            m = a[mi]
        end
    end
    return m,mi
end

print(maximum({8,10,23,12,5}))