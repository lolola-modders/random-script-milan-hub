local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "mradol script hub",
   Icon = 0,
   LoadingTitle = "loading . . .",
   LoadingSubtitle = "by mradol",
   ShowText = "Rayfield",
   Theme = "Default",
   ToggleUIKeybind = "p",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "Wbskq4scD",
      RememberJoins = true
   },
   KeySystem = true,
   KeySettings = {
      Title = "key",
      Subtitle = "Key",
      Note = "join the discord https://discord.gg/Wbskq4scD",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"milan", "MILAN"}
   }
})

local MainTab = Window:CreateTab("Main", 4483362458)

-- ====================== VARIABLES ======================
local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")

local flySpeed = 1000
local flying = false
local noclipping = false
local aimbot = false
local infiniteNight = false

local flyConnection = nil
local noclipLoop = nil
local aimbotLoop = nil
local nightLoop = nil
local bv, bg = nil, nil

local character = player.Character or player.CharacterAdded:Wait()
local rootpart = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")

-- ====================== FLY ======================
local function startFly()
    flying = true
    if bv then bv:Destroy() end
    if bg then bg:Destroy() end
    bv = Instance.new("BodyVelocity")
    bv.MaxForce = Vector3.new(1e5, 1e5, 1e5)
    bv.Parent = rootpart
    bg = Instance.new("BodyGyro")
    bg.MaxTorque = Vector3.new(1e5, 1e5, 1e5)
    bg.P = 12500
    bg.Parent = rootpart
    humanoid.PlatformStand = true
    flyConnection = RunService.Heartbeat:Connect(function()
        if not flying then return end
        local camera = workspace.CurrentCamera
        local moveDir = Vector3.new()
  
        if UIS:IsKeyDown(Enum.KeyCode.W) then moveDir += camera.CFrame.LookVector end
        if UIS:IsKeyDown(Enum.KeyCode.S) then moveDir -= camera.CFrame.LookVector end
        if UIS:IsKeyDown(Enum.KeyCode.A) then moveDir -= camera.CFrame.RightVector end
        if UIS:IsKeyDown(Enum.KeyCode.D) then moveDir += camera.CFrame.RightVector end
        if UIS:IsKeyDown(Enum.KeyCode.Space) then moveDir += Vector3.new(0,1,0) end
        if UIS:IsKeyDown(Enum.KeyCode.LeftControl) or UIS:IsKeyDown(Enum.KeyCode.C) then
            moveDir -= Vector3.new(0,1,0)
        end
  
        if moveDir.Magnitude > 0 then
            moveDir = moveDir.Unit
        end
  
        bv.Velocity = moveDir * flySpeed
        bg.CFrame = camera.CFrame
    end)
end

local function stopFly()
    flying = false
    if flyConnection then flyConnection:Disconnect() end
    if bv then bv:Destroy() bv = nil end
    if bg then bg:Destroy() bg = nil end
    if humanoid then humanoid.PlatformStand = false end
end
... (173lignes restantes)

message.txt
11 Ko
﻿@#111
﻿﻿@#111
﻿﻿@#111
﻿﻿
#111
kdr34k
 
:YouTube: 270:YouTube:
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "mradol script hub",
   Icon = 0,
   LoadingTitle = "loading . . .",
   LoadingSubtitle = "by mradol",
   ShowText = "Rayfield",
   Theme = "Default",
   ToggleUIKeybind = "p",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "Wbskq4scD",
      RememberJoins = true
   },
   KeySystem = true,
   KeySettings = {
      Title = "key",
      Subtitle = "Key",
      Note = "join the discord https://discord.gg/Wbskq4scD",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"milan", "MILAN"}
   }
})

local MainTab = Window:CreateTab("Main", 4483362458)

-- ====================== VARIABLES ======================
local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")

local flySpeed = 1000
local flying = false
local noclipping = false
local aimbot = false
local infiniteNight = false

local flyConnection = nil
local noclipLoop = nil
local aimbotLoop = nil
local nightLoop = nil
local bv, bg = nil, nil

local character = player.Character or player.CharacterAdded:Wait()
local rootpart = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")

-- ====================== FLY ======================
local function startFly()
    flying = true
    if bv then bv:Destroy() end
    if bg then bg:Destroy() end
    bv = Instance.new("BodyVelocity")
    bv.MaxForce = Vector3.new(1e5, 1e5, 1e5)
    bv.Parent = rootpart
    bg = Instance.new("BodyGyro")
    bg.MaxTorque = Vector3.new(1e5, 1e5, 1e5)
    bg.P = 12500
    bg.Parent = rootpart
    humanoid.PlatformStand = true
    flyConnection = RunService.Heartbeat:Connect(function()
        if not flying then return end
        local camera = workspace.CurrentCamera
        local moveDir = Vector3.new()
  
        if UIS:IsKeyDown(Enum.KeyCode.W) then moveDir += camera.CFrame.LookVector end
        if UIS:IsKeyDown(Enum.KeyCode.S) then moveDir -= camera.CFrame.LookVector end
        if UIS:IsKeyDown(Enum.KeyCode.A) then moveDir -= camera.CFrame.RightVector end
        if UIS:IsKeyDown(Enum.KeyCode.D) then moveDir += camera.CFrame.RightVector end
        if UIS:IsKeyDown(Enum.KeyCode.Space) then moveDir += Vector3.new(0,1,0) end
        if UIS:IsKeyDown(Enum.KeyCode.LeftControl) or UIS:IsKeyDown(Enum.KeyCode.C) then
            moveDir -= Vector3.new(0,1,0)
        end
  
        if moveDir.Magnitude > 0 then
            moveDir = moveDir.Unit
        end
  
        bv.Velocity = moveDir * flySpeed
        bg.CFrame = camera.CFrame
    end)
end

local function stopFly()
    flying = false
    if flyConnection then flyConnection:Disconnect() end
    if bv then bv:Destroy() bv = nil end
    if bg then bg:Destroy() bg = nil end
    if humanoid then humanoid.PlatformStand = false end
end

-- ====================== NO DELAY SUR E ======================
UIS.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if not flying then return end
    if input.KeyCode == Enum.KeyCode.E then
        local tool = player.Character and player.Character:FindFirstChildOfClass("Tool")
        if tool then
            tool:Activate()
            task.wait(0.05)
            tool:Activate()
        end
    end
end)

-- ====================== KICK & BAN ======================
local function SelfKick()
    Rayfield:Notify({Title = "Kick", Content = "Tu vas être kick dans 1 seconde...", Duration = 1})
    wait(1)
    player:Kick("Kicked by mradol script hub")
end

local function SelfBan()
    Rayfield:Notify({
        Title = "BAN",
        Content = "Tu vas être banni dans 2 secondes...",
        Duration = 2
    })
    wait(2)
    player:Kick("You have been banned for exploiting.")
end

-- ====================== NOCLIP ULTRA ======================
local function toggleNoclip(state)
    noclipping = state
    if noclipping then
        noclipLoop = RunService.Heartbeat:Connect(function()
            if not noclipping then return end
            if not character or not character.Parent then return end
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                    part.CollisionGroup = 2
                end
            end
        end)
    else
        if noclipLoop then noclipLoop:Disconnect() noclipLoop = nil end
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
                part.CollisionGroup = 0
            end
        end
    end
end

-- ====================== AIMBOT ======================
local function toggleAimbot(state)
    aimbot = state
    if aimbot then
        aimbotLoop = RunService.RenderStepped:Connect(function()
            if not aimbot then return end
            local closest = nil
            local shortestDistance = math.huge
            for _, plr in pairs(game.Players:GetPlayers()) do
                if plr ~= player and plr.Character and plr.Character:FindFirstChild("Head") then
                    local distance = (rootpart.Position - plr.Character.Head.Position).Magnitude
                    if distance < shortestDistance then
                        shortestDistance = distance
                        closest = plr.Character.Head
                    end
                end
            end
            if closest then
                workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, closest.Position)
            end
        end)
    else
        if aimbotLoop then aimbotLoop:Disconnect() aimbotLoop = nil end
    end
end

-- ====================== 99 NUIT ======================
local function toggleInfiniteNight(state)
    infiniteNight = state
    if infiniteNight then
        nightLoop = RunService.Heartbeat:Connect(function()
            if not infiniteNight then return end
            Lighting.ClockTime = 0
            Lighting.Brightness = 0.1
            Lighting.FogEnd = 100000
            Lighting.GlobalShadows = false
        end)
        Lighting.ClockTime = 0
    else
        if nightLoop then nightLoop:Disconnect() nightLoop = nil end
        Lighting.ClockTime = 12
    end
end

-- ====================== TELEPORT FUNCTIONS ======================
local function TeleportTo(targetPlayer)
    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        rootpart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
        Rayfield:Notify({Title = "Téléportation", Content = "Téléporté vers " .. targetPlayer.Name, Duration = 3})
    end
end

local function TeleportToSpawn()
    local spawn = workspace:FindFirstChild("SpawnLocation") or workspace:FindFirstChildWhichIsA("SpawnLocation")
    if spawn then
        rootpart.CFrame = spawn.CFrame + Vector3.new(0, 5, 0)
        Rayfield:Notify({Title = "Téléportation", Content = "Tu as été téléporté au Spawn", Duration = 3})
    else
        Rayfield:Notify({Title = "Erreur", Content = "Aucun SpawnLocation trouvé", Duration = 4})
    end
end

local function TeleportToRandom()
    local parts = {}
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("BasePart") and obj.Size.Magnitude > 8 and obj.Transparency < 1 then
            table.insert(parts, obj)
        end
    end
    if #parts > 0 then
        local randomPart = parts[math.random(1, #parts)]
        local randomOffset = Vector3.new(math.random(-10,10), 5, math.random(-10,10))
        rootpart.CFrame = randomPart.CFrame + randomOffset
        Rayfield:Notify({Title = "Téléportation Aléatoire", Content = "Tu as été téléporté à un endroit aléatoire", Duration = 3})
    else
        Rayfield:Notify({Title = "Erreur", Content = "Aucun endroit trouvé", Duration = 4})
    end
end

-- ====================== UI ======================
local FlyToggle = MainTab:CreateToggle({Name = "Fly", CurrentValue = false, Flag = "FlyToggle", Callback = function(Value) if Value then startFly() else stopFly() end end})
local NoclipToggle = MainTab:CreateToggle({Name = "Noclip (Ultra)", CurrentValue = false, Flag = "NoclipToggle", Callback = function(Value) toggleNoclip(Value) end})
local AimbotToggle = MainTab:CreateToggle({Name = "Aimbot (Visée Auto)", CurrentValue = false, Flag = "AimbotToggle", Callback = function(Value) toggleAimbot(Value) end})
local NightToggle = MainTab:CreateToggle({Name = "🌙 99 Nuit", CurrentValue = false, Flag = "NightToggle", Callback = function(Value) toggleInfiniteNight(Value) end})

local KickButton = MainTab:CreateButton({
   Name = "🚪 Kick Yourself",
   Callback = function() SelfKick() end,
})

local BanButton = MainTab:CreateButton({
   Name = "⛔ Ban Yourself",
   Callback = function() SelfBan() end,
})

local SpeedSlider = MainTab:CreateSlider({
   Name = "Fly Speed",
   Range = {10, 2000},
   Increment = 10,
   Suffix = " studs/s",
   CurrentValue = 1000,
   Flag = "FlySpeedSlider",
   Callback = function(Value) flySpeed = Value end,
})

-- Téléport UI
local playerList = {}
for _, plr in pairs(game.Players:GetPlayers()) do
    if plr ~= player then table.insert(playerList, plr.Name) end
end

local TeleportDropdown = MainTab:CreateDropdown({Name = "Téléport vers Joueur", Options = playerList, CurrentOption = {""}, Flag = "TeleportDropdown", Callback = function(Selected) local target = game.Players:FindFirstChild(Selected[1]) if target then TeleportTo(target) end end})
local SpawnButton = MainTab:CreateButton({Name = "🏠 TP to Spawn", Callback = function() TeleportToSpawn() end})
local RandomTPButton = MainTab:CreateButton({Name = "🎲 TP Aléatoire", Callback = function() TeleportToRandom() end})

print("✅ Script Hub chargé avec Ban Yourself ajouté !")
