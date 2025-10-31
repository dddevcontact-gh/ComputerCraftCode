local fuelLevel = turtle.getFuelLevel()

local function turtleFuel()
    if fuelLevel < 400 then
        turtle.refuel(8)
    end
end

local function digLayer()
    turtle.digDown()
    for i = 1, 10 do
        for a = 1, 15 do
            turtle.dig()
            turtle.forward()
        end
        turtle.dig()
        turtle.forward()
        turtle.turnLeft()
        turtle.dig()
        turtle.forward()
        turtle.turnLeft()
        turtle.dig()
        turtle.forward()
        turtle.down()
    end
end

digLayer()