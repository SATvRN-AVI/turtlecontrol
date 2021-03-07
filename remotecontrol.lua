

peripheralList = peripheral.getNames()

function manualWireless()
    while true do
        local sender, message, protocol = rednet.receive() 
        if message == "w" then
            turtle.forward()
            print(message .. ": Moving forward...")
        elseif message == "s" then
            turtle.back()
            print(message .. ": Moving backward...")
        elseif message == "a" then
            turtle.turnLeft()
            print(message .. ": Turning left...")
        elseif message == "d" then
            turtle.turnRight()
            print(message .. ": Turning right...")
        elseif message == "z" then
            turtle.down()
            print(message .. ": Going down...")
        elseif message == "q" then
            turtle.up()
            print(message .. ": Going up...")
        elseif message == "e" then
            textutils.slowPrint("Terminating manual mode. Standby...")
            rednet.close(peripheralList[i])
            os.sleep(2)
            return
        else
            print("Key not recognized. Use W/A/S/D/Q/Z for movmement and E to exit...")
        end
    end
end

if next(peripheralList) then
    for i = 1, #peripheralList do
        print("There is a "..peripheral.getType(peripheralList[i]).." connected to the \""..peripheralList[i].."\"")
        if peripheral.getType(peripheralList[i]) == "modem" then
            textutils.slowPrint("Activating modem. Standby...")
            os.sleep(2)
            rednet.open(peripheralList[i])
            textutils.slowPrint("Modem powered up, loading boot sequence for manual control. Standby...")
            os.sleep(2)
            manualWireless()
        else
            textutils.slowPrint("No modem found. Terminating bootup...")
            os.sleep(2)
            return
        end
    end
else
    textutils.slowPrint("Could not find any peripherals. Terminating bootup...")
    return
end




