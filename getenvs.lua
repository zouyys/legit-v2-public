local Workspace = game:GetService("Workspace")
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local UserInputService = game:GetService("UserInputService")

    local Off = Instance.new("Sound", game.Workspace)
    Off.SoundId = "rbxassetid://11064287784" 
    local On = Instance.new("Sound", game.Workspace)
    On.SoundId = "rbxassetid://11064289247"       

    local big = Instance.new("Sound", game.Workspace)
    big.SoundId = "rbxassetid://11064286728"
    local small = Instance.new("Sound", game.Workspace)
    small.SoundId = "rbxassetid://11064291619" 


local hotkey = getgenv().Key 
local switchkey = getgenv().FovKey 
local mouse = game.Players.LocalPlayer:GetMouse()
getgenv().autosetup = false 
loadstring(game:HttpGet("https://raw.githubusercontent.com/zouyys/legit-v2-public/main/silent"))()
DaHoodSettings.Prediction = getgenv().Prediction --ex (0.105)
Aiming.TargetPart = getgenv().Parts -- {"UpperTorso","Head"} -- hitparts
Aiming.FOV = getgenv().FOV --ex (size of fov 0 - 1000)
Aiming.FOVSides = getgenv().FOVSides --ex (0 - 12 or indefinite)
Aiming.HitChance = getgenv().Hitchance --ex (hitchance lol [0 - 100 or more like 110])
Aiming.ShowFOV = getgenv().ShowFOV --ex (show fov, [true, or false])
-- [+]

mouse.KeyDown:Connect(
    function(key)
        if key == hotkey then
            if getgenv().Aiming.Enabled == true then
                getgenv().Aiming.Enabled = false
                Off:Play()
            else
                getgenv().Aiming.Enabled = true
                On:Play()
            end
        end
    end
)

local mouseyea = game.Players.LocalPlayer:GetMouse()
    mouseyea.KeyDown:Connect(
        function(togglebro)
            if togglebro ==  getgenv().FovKey then
                if Aiming.FOV == 14 then
                    Aiming.FOV = 5
                    small:Play()
                else
                    Aiming.FOV = 14
                    big:Play()
                end
            end
        end
    )   

local RunService = game:GetService("RunService")
RunService.Heartbeat:Connect(function()
    pcall(function()
        for i,v in pairs(game.Players:GetChildren()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                local hrp = v.Character.HumanoidRootPart
                hrp.Velocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Z)
                hrp.AssemblyLinearVelocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Z)
            end
        end
    end)
end)
