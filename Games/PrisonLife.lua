if game.PlaceId == 155615604 then
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("DarkHub", "DarkTheme")

   local Tab = Window:NewTab("Prison Life")
   local Section = Tab:NewSection("Cheats")

   Section:NewSlider("Speed", "WS", 500, 0, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
   end)

   Section:NewSlider("Jump", "PowerJump", 500, 0, function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
 end)

Section:NewButton("Arrest Crims", "a", function()
    local Player = game.Players.LocalPlayer
local cpos = Player.Character.HumanoidRootPart.CFrame
for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
if v.Name ~= Player.Name then
local i = 10
    repeat
    wait()
    i = i-1
    game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
    Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
    until i == 0
end
end
Player.Character.HumanoidRootPart.CFrame = cpos
Notify("Success", "Arrested all of the n00bs", "Cool!")
end)

Section:NewButton("Super Push", "a", function()
mainRemotes = game.ReplicatedStorage meleeRemote = mainRemotes['meleeEvent'] mouse = game.Players.LocalPlayer:GetMouse() punching = false cooldown = false function punch() cooldown = true local part = Instance.new("Part", game.Players.LocalPlayer.Character) part.Transparency = 1 part.Size = Vector3.new(5, 2, 3) part.CanCollide = false local w1 = Instance.new("Weld", part) w1.Part0 = game.Players.LocalPlayer.Character.Torso w1.Part1 = part w1.C1 = CFrame.new(0,0,2) part.Touched:connect(function(hit) if game.Players:FindFirstChild(hit.Parent.Name) then local plr = game.Players:FindFirstChild(hit.Parent.Name) if plr.Name ~= game.Players.LocalPlayer.Name then part:Destroy() for i = 1,100 do meleeRemote:FireServer(plr) end end end end) wait(1) cooldown = false part:Destroy() end mouse.KeyDown:connect(function(key) if cooldown == false then if key:lower() == "f" then punch() end end end)
end)

Section:NewButton("Police Team", "a", function()
  workspace.Remote.TeamEvent:FireServer("Bright blue")
end)

Section:NewButton("Inmate Team", "a", function()
  workspace.Remote.TeamEvent:FireServer("Bright orange")
end)

Section:NewButton("Neutral Team", "a", function()
 Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
end)

Section:NewButton("Crim Team", "a", function()
 wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-976.125183, 109.123924, 2059.99536)

wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.77,100,2379.07)
end)

Section:NewButton("Remove Police Walls", "a", function()
 wait(0.1)
game.Workspace.Prison_Guard_Outpost:Remove()

wait(0.1)
game.Workspace.Prison_Cafeteria.building:Remove()

wait(0.1)
game.Workspace.Prison_Cafeteria.glass:Remove()

wait(0.1)
game.Workspace.Prison_Cafeteria.oven:Remove()

wait(0.1)
game.Workspace.Prison_Cafeteria.shelves:Remove()

wait(0.1)
game.Workspace.Prison_Cafeteria.vents:Remove()

wait(0.1)
game.Workspace.Prison_Cafeteria.accents:Remove()

wait(0.1)
game.Workspace.Prison_Cafeteria.vendingmachine:Remove()

wait(0.1)
game.Workspace.Prison_Cafeteria.Prison_table1:Remove()

wait(0.1)
game.Workspace.Prison_Cafeteria.counter:Remove()

wait(0.1)
game.Workspace.Prison_Cafeteria.boxes:Remove()
end)

Section:NewButton("Sword", "a", function()
local Sword = Instance.new("Tool")
local Handle = Instance.new("Part")
local Mesh = Instance.new("SpecialMesh")
local Unsheath = Instance.new("Sound")
local SwordSlash = Instance.new("Sound")
SwordSlash.Name = "SwordSlash"
Unsheath.Name = "Unsheath"
Unsheath.SoundId = "http://www.roblox.com/asset/?id=12222225"
Unsheath.Volume = 1
SwordSlash.SoundId = "http://www.roblox.com/asset/?id=12222216"
SwordSlash.Volume = .7
Unsheath.Parent = Handle
SwordSlash.Parent = Handle
Mesh.Parent = Handle
Mesh.MeshId = "rbxassetid://497078148"
Mesh.Scale = Vector3.new(5,5,5)
Handle.Name = "Handle"
Handle.Parent = Sword
Sword.GripForward = Vector3.new(-1,0,0)
Sword.GripPos = Vector3.new(0,0,-1.5)
Sword.GripRight = Vector3.new(0,1,0)
Sword.GripUp = Vector3.new(0,0,1)
Sword.ToolTip = "UwU"
Sword.TextureId = "rbxasset://Textures/Sword128.png"
Sword.CanBeDropped = false
Sword.RequiresHandle = true
Handle.Orientation = Vector3.new(-46.24, 42.14, 50.93)
Handle.Position = Vector3.new(-3.174,1.57,3.04)
Handle.CanCollide = true
Handle.Size = Vector3.new(1,.8,4)
Mesh.MeshId = "rbxasset://fonts/sword.mesh"
Mesh.MeshType = "FileMesh"
Mesh.Offset = Vector3.new(0,0,0)
Mesh.Scale = Vector3.new(1,1,1)
Mesh.TextureId = "rbxasset://textures/SwordTexture.png"
Sword.Equipped:Connect(function()
Unsheath:Play()
end)
Sword.Activated:Connect(function()
SwordSlash:Play()
Handle.Touched:Connect(function(Handle)
p=game.Players:FindFirstChild(Handle.Parent.Name)
game.ReplicatedStorage.meleeEvent:FireServer(p)
end)
local Anim = Instance.new("StringValue")
Anim.Name = "toolanim"
Anim.Value = "Slash"
Anim.Parent = Sword
end)
Mouse_Icon = "rbxasset://textures/GunCursor.png"
Reloading_Icon = "rbxasset://textures/GunWaitCursor.png"
Tool = Sword
Mouse = nil
function UpdateIcon()
if Mouse then
Mouse.Icon = Tool.Enabled and Mouse_Icon or Reloading_Icon
end
end
function OnEquipped(ToolMouse)
Mouse = ToolMouse
UpdateIcon()
end
function OnChanged(Property)
if Property == "Enabled" then
UpdateIcon()
end
end
Tool.Equipped:Connect(OnEquipped)
Tool.Changed:Connect(OnChanged)
Sword.Parent = game.Players.LocalPlayer.Backpack
end)

Section:NewButton("TP Prison", "a", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.77,100,2379.07)
end)

Section:NewButton("TP Escape", "a", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-976.125183, 109.123924, 2059.99536)
end)

Section:NewToggle("ESP", "A", function(state)
    if state then
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/WRD ESP.txt"))()
    else
        loadstring(game:HttpGet("https://pastebin.com/raw/RGXcxqSc"))()
    end
end)
elseif game.PlaceId == 3786622445 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Ninja Legends", "Sentinel")

    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Templete")

    MainSection:NewToggle("UILIB TEST", "Desc", function(v)
        getgenv().autoswing = v
        while true do
            if not getgenv().autoswing then return end
            for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:FindFirstChild("ninjitsuGain") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    break
                end
            end
            local A_1 = "swingKatana"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1)
            wait(0.1)
        end
    end)

    MainSection:NewToggle("S A L E S", "OK", function(v)
        getgenv().autosell = v
        while true do
            if getgenv().autoswing == false then return end
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(0.1)
            print("ff")
            wait(0.1)
        end
    end)

    MainSection:NewButton("TelHg", "Uns", function()
        local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(0.1)
        end
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
    end)
    
    MainSection:NewToggle("LoopTest", "f", function(v)
        getgenv().buyswords = v
        while true do
            if not getgenv().buyswords then return end
            local A_1 = "buyAllSwords"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)

    MainSection:NewToggle("Byp", "bom video esse", function(v)
        getgenv().buybelts = v
        while true do
            if not getgenv().buybelts then return end
            local A_1 = "buyAllBelts"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)
end
