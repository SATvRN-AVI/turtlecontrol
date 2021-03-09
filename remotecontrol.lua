 -- This section of code sets a variable to the table peripheral.getNames()

function manualWireless()                                       -- Create a function to house the remote control aspect
    
    while true do                                               -- Create a looping program to run constantly
        local sender, message, protocol = rednet.receive() 
        
        if message == "w" then                                 -- Since the turtle can only detect what is in front,
            local sense = turtle.detect()                      -- above, and below it, for those directional commands
            if sense == false then                             -- there is a function that will check if there are blocks
                turtle.forward()                               -- that stop the turtle from moving. If so, the turtle will
            else                                               -- break a block and resume the movement command.
                print("A block was detected, mining...")       --
                turtle.dig()                                   --
                os.sleep(0.1)                                 --
                turtle.forward()                               -- 
            end
            print(message .. ": Moving forward")


        elseif message == "s" then                             -- this chunk makes the turtle go back
            turtle.back()
            print(message .. ": Moving backward")


        elseif message == "a" then                             -- this chunk makes the turtle turn left
            turtle.turnLeft()
            print(message .. ": Turning left")


        elseif message == "d" then                             -- this chunk makes the turtle turn right
            turtle.turnRight()
            print(message .. ": Turning right")


        elseif message == "z" then                             -- this is the down command, same functionality as the forward command above
            local sense = turtle.detectDown()
            if sense == false then
                turtle.down()
            else
                print("A block was detected, mining...")
                turtle.digDown()
                os.sleep(0.1)
                turtle.down()
            end
            print(message .. ": Going down...")


        elseif message == "q" then                             -- and here again, same as above two, but up instead
            local sense = turtle.detectUp()
            if sense == false then 
                turtle.up()
            else
                print("A block was detected, mining...")
                turtle.digUp()
                os.sleep(0.1)
                turtle.up()
            end
            print(message .. ": Going up...")


        elseif message == "e" then                             -- e is the universal exit command. easier than rawinput
            textutils.slowPrint("Terminating manual mode. Standby...")
            rednet.close(peripheralList[i])
            os.sleep(2)
            return
        
        
        else
            print("Key not recognized. Use W/A/S/D/Q/Z for movmement and E to exit...") -- this just alerts the user that the key they pressed isn't a function
        end
    end
end

manualWireless()

