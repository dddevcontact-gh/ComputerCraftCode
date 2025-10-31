local fuelLevel = turtle.getFuelLevel()

local function turtleFuel()
    if fuelLevel < 400 then
        turtle.refuel(8)
    end
end

local function digLayer()
    for i = 1, 10 do
        turtleFuel()
        turtle.digDown()
        turtle.down()
        for i = 1, 50 do
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
        for i = 1, 50 do
            turtle.dig()
            turtle.forward()
        end
        turtle.dig()
        turtle.forward()
        turtle.turnRight()
        turtle.dig()
        turtle.forward()
        turtle.turnRight()
        turtle.dig()
        for i = 1, 50 do
            turtle.dig()
            turtle.forward()
        end
        turtle.dig()
    end
end

digLayer()