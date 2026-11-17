
-- ZXV HUB V1

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "ZXV_HUB"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local main = Instance.new("Frame")
main.Size = UDim2.fromOffset(300, 280)
main.Position = UDim2.new(0.5, -150, 0.5, -140)
main.BackgroundColor3 = Color3.fromRGB(18, 18, 28)
main.BorderSizePixel = 0
main.Parent = gui

Instance.new("UICorner", main).CornerRadius =
    UDim.new(0, 12)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundTransparency = 1
title.Text = "ZXV HUB"
title.TextColor3 = Color3.fromRGB(170, 100, 255)
title.TextSize = 28
title.Font = Enum.Font.GothamBold
title.Parent = main

local function createButton(name, y)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.85, 0, 0, 38)
    button.Position = UDim2.new(0.075, 0, 0, y)
    button.BackgroundColor3 = Color3.fromRGB(42, 42, 58)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.TextSize = 14
    button.Font = Enum.Font.GothamBold
    button.Text = name .. " : OFF"
    button.Parent = main

    Instance.new("UICorner", button).CornerRadius =
        UDim.new(0, 8)

    local active = false

    button.MouseButton1Click:Connect(function()
        active = not active
        button.Text = name .. (active and " : ON" or " : OFF")
    end)
end

createButton("ESP FRUIT", 65)
createButton("ESP NAME", 110)
createButton("AUTO FARM", 155)
createButton("AUTO QUEST", 200)

print("ZXV HUB Loaded!")

