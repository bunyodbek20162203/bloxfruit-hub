-- Blox Fruits Pro Hub
-- GUI

local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0,350,0,400)
Frame.Position = UDim2.new(0.5,-175,0.5,-200)
Frame.BackgroundColor3 = Color3.fromRGB(30,30,30)

local function createButton(name,pos,callback)

    local b = Instance.new("TextButton")
    b.Parent = Frame
    b.Size = UDim2.new(0,300,0,35)
    b.Position = UDim2.new(0,25,0,pos)
    b.Text = name
    b.BackgroundColor3 = Color3.fromRGB(45,45,45)

    b.MouseButton1Click:Connect(callback)

end

-- AUTO FARM
createButton("Auto Farm",20,function()

    getgenv().AutoFarm = not getgenv().AutoFarm

    while getgenv().AutoFarm do
        task.wait()

        for _,enemy in pairs(workspace.Enemies:GetChildren()) do
            if enemy:FindFirstChild("HumanoidRootPart") then

                char.HumanoidRootPart.CFrame =
                    enemy.HumanoidRootPart.CFrame * CFrame.new(0,0,3)

            end
        end

    end

end)

-- AUTO LEVEL
createButton("Auto Level",70,function()

    getgenv().AutoLevel = not getgenv().AutoLevel

    while getgenv().AutoLevel do
        task.wait()

        for _,enemy in pairs(workspace.Enemies:GetChildren()) do
            if enemy:FindFirstChild("Humanoid") then

                char.HumanoidRootPart.CFrame =
                    enemy.HumanoidRootPart.CFrame

            end
        end

    end

end)

-- FRUIT SNIPER
createButton("Fruit Sniper",120,function()

    getgenv().FruitSniper = not getgenv().FruitSniper

    while getgenv().FruitSniper do
        task.wait(2)

        for _,v in pairs(workspace:GetChildren()) do
            if string.find(v.Name,"Fruit") then

                char.HumanoidRootPart.CFrame =
                    v.Handle.CFrame

            end
        end
    end

end)

-- AUTO BOSS
createButton("Auto Boss",170,function()

    getgenv().AutoBoss = not getgenv().AutoBoss

    while getgenv().AutoBoss do
        task.wait()

        for _,boss in pairs(workspace.Enemies:GetChildren()) do
            if string.find(boss.Name,"Boss") then

                char.HumanoidRootPart.CFrame =
                    boss.HumanoidRootPart.CFrame

            end
        end
    end

end)

-- AUTO HAKI
createButton("Auto Haki",220,function()

    while true do
        task.wait(5)

        game:GetService("VirtualInputManager"):SendKeyEvent(true,"J",false,game)
        game:GetService("VirtualInputManager"):SendKeyEvent(false,"J",false,game)

    end

end)

-- TELEPORT ISLAND
createButton("Teleport Starter Island",270,function()

    char.HumanoidRootPart.CFrame =
        CFrame.new(1050,16,1500)

end)

createButton("Teleport Jungle",320,function()

    char.HumanoidRootPart.CFrame =
        CFrame.new(-1600,36,150)

end)