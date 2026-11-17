
-- ZXV HUB KEY SYSTEM
-- Permanent Key: ZXV2026

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local KEY = "ZXV2026"

local gui = Instance.new("ScreenGui")
gui.Name = "ZXV_KEY_SYSTEM"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.fromOffset(320, 200)
frame.Position = UDim2.new(0.5, -160, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(18,18,18)
frame.Parent = gui

Instance.new("UICorner", frame).CornerRadius =
    UDim.new(0, 12)

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(220,0,40)
stroke.Thickness = 2
stroke.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,50)
title.BackgroundColor3 = Color3.fromRGB(130,0,25)
title.Text = "ZXV HUB | KEY SYSTEM"
title.TextColor3 = Color3.new(1,1,1)
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.Parent = frame

local input = Instance.new("TextBox")
input.Size = UDim2.new(1,-40,0,40)
input.Position = UDim2.fromOffset(20,70)
input.PlaceholderText = "Enter Key..."
input.Text = ""
input.TextColor3 = Color3.new(1,1,1)
input.BackgroundColor3 = Color3.fromRGB(45,45,45)
input.Parent = frame

local check = Instance.new("TextButton")
check.Size = UDim2.new(1,-40,0,40)
check.Position = UDim2.fromOffset(20,125)
check.Text = "CHECK KEY"
check.TextColor3 = Color3.new(1,1,1)
check.BackgroundColor3 = Color3.fromRGB(170,0,35)
check.Font = Enum.Font.GothamBold
check.Parent = frame

local status = Instance.new("TextLabel")
status.Size = UDim2.new(1,0,0,25)
status.Position = UDim2.fromOffset(0,170)
status.BackgroundTransparency = 1
status.TextColor3 = Color3.new(1,1,1)
status.Parent = frame

check.Activated:Connect(function()
    if input.Text == KEY then
        status.Text = "KEY ACCEPTED!"
        status.TextColor3 = Color3.fromRGB(0,255,100)
        task.wait(0.5)
        gui:Destroy()
        print("ZXV HUB ACCESS GRANTED")
    else
        status.Text = "INVALID KEY!"
        status.TextColor3 = Color3.fromRGB(255,50,50)
    end
end)

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
