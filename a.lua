-- GUI
local gui = Instance.new("ScreenGui", game.CoreGui)

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0,300,0,220)
frame.Position = UDim2.new(0.5,-150,0.5,-110)
frame.BackgroundColor3 = Color3.fromRGB(30,30,30)

-- EXIT BUTTON
local exit = Instance.new("TextButton", frame)
exit.Size = UDim2.new(0,30,0,30)
exit.Position = UDim2.new(1,-35,0,5)
exit.Text = "X"

exit.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

-- FRUIT ESP
local fruit = Instance.new("TextButton", frame)
fruit.Size = UDim2.new(0,200,0,40)
fruit.Position = UDim2.new(0.5,-100,0,50)
fruit.Text = "Fruit ESP"

fruit.MouseButton1Click:Connect(function()

    for _,v in pairs(workspace:GetChildren()) do
        if string.find(v.Name,"Fruit") then

            local esp = Instance.new("Highlight",v)
            esp.FillColor = Color3.new(1,0,0)

        end
    end

end)

-- CHEST ESP
local chest = Instance.new("TextButton", frame)
chest.Size = UDim2.new(0,200,0,40)
chest.Position = UDim2.new(0.5,-100,0,100)
chest.Text = "Chest ESP"

chest.MouseButton1Click:Connect(function()

    for _,v in pairs(workspace:GetChildren()) do
        if string.find(v.Name,"Chest") then

            local esp = Instance.new("Highlight",v)
            esp.FillColor = Color3.new(1,1,0)

        end
    end

end)

-- AURA
local aura = Instance.new("TextButton", frame)
aura.Size = UDim2.new(0,200,0,40)
aura.Position = UDim2.new(0.5,-100,0,150)
aura.Text = "Aura"

aura.MouseButton1Click:Connect(function()

    while true do
        task.wait()

        for _,enemy in pairs(workspace.Enemies:GetChildren()) do

            if enemy:FindFirstChild("HumanoidRootPart") then

                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                enemy.HumanoidRootPart.CFrame

            end

        end

    end

end)