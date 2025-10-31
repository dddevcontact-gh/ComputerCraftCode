local fuelLevel = turtle.getFuelLevel()

local function turtleFuel()
    if fuelLevel < 400 then
        turtle.refuel(8)
    end
end

local function leftTurn()
    turtle.dig()
    turtle.forward()
    turtle.turnLeft()
    turtle.dig()
    turtle.forward()
    turtle.turnRight()
    turtle.dig()
    turtle.forward()
end

local function rightTurn()
    turtle.dig()
    turtle.forward()
    turtle.turnRight()
    turtle.dig()
    turtle.forward()
    turtle.turnRight()
    turtle.dig()
    turtle.forward()
end

local function digLayer()
    turtleFuel()
    turtle.digDown()
    turtle.down()
    for i = 1, 5 do
        for i = 1, 10 do
            turtle.dig()
            turtle.forward()
        end
        leftTurn()
        for i = 1, 10 do
            turtle.dig()
            turtle.forward()
        end
        rightTurn()
        for i = 1, 10 do
            turtle.dig()
            turtle.forward()
        end
    end
end

digLayer()