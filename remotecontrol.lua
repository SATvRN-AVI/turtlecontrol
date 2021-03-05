rednet.open("right")

print("Use WASD and the arrow keys for direction")

while true do
    local event, character = os.pullEvent("char")
    -- local event, key = os.pullEvent("key")
    if character == "w" then
        turtle.forward()
        print(character .. ": Moving forward...")
        os.sleep(0.05)
    elseif character == "s" then
        turtle.back()
        print(character .. ": Moving backward...")
        os.sleep(0.05)
    elseif character == "a" then
        turtle.turnLeft()
        print(character .. ": Turning left...")
        os.sleep(0.05)
    elseif character == "d" then
        turtle.turnRight()
        print(character .. ": Turning right...")
        os.sleep(0.05)
    --[[ elseif key == "leftCtrl" then
        turtle.down()
        print(key .. ": Going down...")
        os.sleep(0.05)
    elseif key == "space" then
        turtle.up()
        print(key .. ": Going down...")
        os.sleep(0.05)
    ]]
    end
end
