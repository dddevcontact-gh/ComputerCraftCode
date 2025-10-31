local fuelLevel = turtle.getFuelLevel()

local function turtleFuel()
    if fuelLevel < 400 then
        turtle.refuel(8)
    end
end

local function digLayer()
    turtleFuel()
    turtle.digDown()
    turtle.down()
    for i = 1, 50 do
        turtle.dig()
        turtle.forward()
    end
    turtle.dig()
    turtle.forward()
    turtle.left()
    turtle.forward()
    turtle.left()
    for i = 1, 50 do
        turtle.dig()
        turtle.forward()
    end
    turtle.dig()
    turtle.forward()
    turtle.right()
    turtle.forward()
    turtle.right()
    for i = 1, 50 do
        turtle.dig()
        turtle.forward()
    end
end

digLayer()