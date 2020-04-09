function BoxMuller()
    local x = math.random()
    local y = math.random()
    x = (x == 0) and 1 or x
    y = (y == 0) and 1 or y
    return math.sqrt(-2*(math.log(x))) * math.sin(2*math.pi*y)
end