-- what this this script does is it remembers what has been stepped on and shows you if
-- it is safe to stand on, i have improoved it by teleporting your player to each Tile so
-- that the script can detect if it is safe or not
-- speed the smaller the number the faster, 3 is reccomended
local Value = 111

--// Services \\--
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

--// Variables \\--
local Player = Players.LocalPlayer
local Tiles = Workspace:WaitForChild("Map"):WaitForChild("Game"):WaitForChild("Tiles")
local Original = Color3.fromRGB(198, 237, 255)

--// Remember Broken Glass \\--
Tiles.DescendantAdded:Connect(function(A_1)
    if A_1.Name == "GlassShatter" then
        -- Set Color
        A_1.Parent.Color = Color3.new(1, 0, 0)
        -- Get Lane
        local Lane = A_1.Parent.Parent.Name
        if Lane == "Right" then
            Lane = "Left"
        else
            Lane = "Right"
        end
        -- Set Sibling Color
        local Number = A_1.Parent.Name:match("%d+")
        Tiles[Lane]["Tile" .. Number].Color = Color3.new(0, 1, 0)
    end
end)

--// Remember Stepped Glass \\--
for _, A_1 in next, Tiles:GetDescendants() do
    if A_1:IsA("TouchTransmitter") then
        local Part = A_1.Parent
        Part.Touched:Connect(function(A_2)
            -- Check if already broken
            if A_2.Transparency == 1 then
                return
            end
            -- Timer
            local Timer = tick() + 0.5
            repeat
                task.wait()
            until tick() - Timer > 0 or Part.Transparency == 1
            -- Get Lane
            local Lane = A_1.Parent.Parent.Name
            if Lane == "Right" then
                Lane = "Left"
            else
                Lane = "Right"
            end
            -- Check if broke
            if Part.Transparency == 1 then
                -- Set Glass Color
                Part.Color = Color3.new(1, 0, 0)
                -- Set Sibling Color
                local Number = A_1.Parent.Name:match("%d+")
                Tiles[Lane]["Tile" .. Number].Color = Color3.new(0, 1, 0)
            elseif A_2.Parent.Humanoid.Health == 100 then
                -- Set Glass Color
                Part.Color = Color3.new(0, 1, 0)
                -- Set Sibling Color
                local Number = A_1.Parent.Name:match("%d+")
                Tiles[Lane]["Tile" .. Number].Color = Color3.new(1, 0, 0)
            end
        end)
    end
end

--// UI Library \\--
local Library = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Just-Egg-Salad/roblox-scripts/main/uwuware'))()
local Window = Library:CreateWindow("Memory by Ezpi")
Window:AddButton({
    text = "Clear Colors",
    callback = function()
        for _, A_1 in next, Tiles:GetDescendants() do
            if A_1:IsA("BasePart") then
                A_1.Color = Original
            end
        end
    end
})
Library:Init()


 

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local CheckTiles = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
main.Position = UDim2.new(0.159695819, 0, 0.344383061, 0)
main.Size = UDim2.new(0, 219, 0, 120)
main.Active = true
main.Draggable = true

CheckTiles.Name = "CheckTiles"
CheckTiles.Parent = main
CheckTiles.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
CheckTiles.Position = UDim2.new(0.132420093, 0, 0.383333325, 0)
CheckTiles.Size = UDim2.new(0, 159, 0, 29)
CheckTiles.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
CheckTiles.Font = Enum.Font.SourceSans
CheckTiles.Text = "Start"
CheckTiles.TextColor3 = Color3.fromRGB(0, 0, 0)
CheckTiles.TextSize = 25.000

CheckTiles.MouseButton1Down:connect(function()
	local player = game.Players.LocalPlayer
wait(2)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(187.579651, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(201.579651, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(215.579651, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(229.579651, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(131.579651, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(145.579651, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(159.579651, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(173.579651, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(61.5796509, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(75.5796509, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(103.579651, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(89.5796509, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(117.579651, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(5.57965088, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(19.5796509, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(33.5796509, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(47.5796509, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-50.4203491, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-64.4203491, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-22.4203491, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-36.4203491, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-8.42034912, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-120.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-106.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-92.4203491, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-78.4203491, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-176.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-162.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-190.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-148.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-134.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-246.420349, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-232.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-260.420349, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-218.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-204.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-302.420349, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-274.420349, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-316.420349, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-288.420349, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-330.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-386.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-372.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-358.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-344.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-442.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-414.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-400.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-428.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-512.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-498.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-484.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-470.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-456.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-554.420349, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-568.420349, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-540.420349, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-526.420349, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-610.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-638.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-624.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-596.420349, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-582.420349, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-708.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-694.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-680.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-666.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-652.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-764.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-736.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-722.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-750.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-834.420349, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-820.420349, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-806.420349, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-792.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-778.420349, 1991.72668, -142.532455, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-848.420349, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-876.420349, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
	wait(Value)
	player.Character.HumanoidRootPart.CFrame = CFrame.new(-862.420349, 1991.72668, -142.532471, 0, 1, 0, 1, 0, 0, 0, 0, -1)
    wait(2)
player.Character.HumanoidRootPart.CFrame = CFrame.new(278.827301, 1992.21191, -149.314667, 0, 0, 1, 0, 1, -0, -1, 0, 0)

end)


TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Size = UDim2.new(0, 219, 0, 34)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Tile checker by Doggo Exploits"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
