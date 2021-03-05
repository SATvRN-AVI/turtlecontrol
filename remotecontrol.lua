rednet.open("right")

while true do
    local event, key = os.pullEvent("char")
    if event == "w" then
        turtle.forward()
    end
end
