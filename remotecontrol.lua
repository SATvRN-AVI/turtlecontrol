peripheral.find("advanced_modem").open(1)

rednet.open("right")

print("Use WASD and the arrow keys for direction")


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
    elseif key == "leftCtrl" then
        turtle.down()
        print(key .. ": Going down...")
    elseif key == "space" then
        turtle.up()
        print(key .. ": Going down...")
        
    end
end
