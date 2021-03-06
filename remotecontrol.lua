


function manualControl()
    while true do
        local event, character = os.pullEvent("char")
        if character == "w" then
            turtle.forward()
            print(character .. ": Moving forward...")
        elseif character == "s" then
            turtle.back()
            print(character .. ": Moving backward...")
        elseif character == "a" then
            turtle.turnLeft()
            print(character .. ": Turning left...")
        elseif character == "d" then
            turtle.turnRight()
            print(character .. ": Turning right...")
        elseif character == "e" then
            turtle.down()
            print(key .. ": Going down...")
        elseif key == "q" then
            turtle.up()
            print(key .. ": Going down...")
        else
            print("Key not recognized. Use W/A/S/D/Q/E for movmement...")
        end
    end
end

function findModem()
    if peripheral.find("modem").open(1) then
        manualControl()
    else
        print("Please connect a modem to this device")
    end
end

findModem()



