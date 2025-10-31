local w = 10
local l = 10
local d = 5
local minFuel = 200

local function refuelIfNeeded()
    local fuelLevel = turtle.getFuelLevel()
    if fuelLevel < 200 then
        for slot = 1, 16 do
            turtle.select(slot)
            if turtle.refuel(0) then
                turtle.refuel(1)
                break
            end
        end
    end
end

local function digForward()
    while turtle.detect() do
        turtle.dig()
    end
    turtle.forward()
end

local function digLayer()
    for i = 1, w do
        for j = 1, l - 1 do
            refuelIfNeeded()
            digForward()
        end

        if i < w then
            if (i % 2 == 1) then
                turtle.turnRight()
                digForward()
                turtle.turnRight()
            else
                turtle.turnLeft()
                digForward()
                turtle.turnleft()
            end
        end
    end
end

for level = 1, d do
    digLayer()
    turtle.digDown()
    turtle.down()
end

print("digging done hb")