
-- ZXV HUB
-- Black & Red Gaming GUI

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "ZXV_HUB"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local main = Instance.new("Frame")
main.Size = UDim2.new(0, 420, 0, 280)
main.Position = UDim2.new(0.5, -210, 0.5, -140)
main.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
main.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = main

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(220, 20, 50)
stroke.Thickness = 2
stroke.Parent = main

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundColor3 = Color3.fromRGB(120, 0, 20)
title.Text = "🔥 ZXV HUB"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 25
title.Font = Enum.Font.GothamBold
title.Parent = main

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 180, 0, 45)
button.Position = UDim2.new(0, 20, 0, 80)
button.BackgroundColor3 = Color3.fromRGB(180, 0, 30)
button.Text = "Main Menu"
button.TextColor3 = Color3.new(1, 1, 1)
button.TextSize = 18
button.Font = Enum.Font.GothamBold
button.Parent = main

local close = Instance.new("TextButton")
close.Size = UDim2.new(0, 35, 0, 35)
close.Position = UDim2.new(1, -42, 0, 7)
close.Text = "X"
close.TextColor3 = Color3.new(1, 1, 1)
close.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
close.Parent = main

close.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

print("ZXV HUB Loaded!")
