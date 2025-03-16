game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Im back... Your overlord is back..." ,"All")
wait(1)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Good luck, Youll need it." ,"All")
wait(3)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Theyre all yours, Mr. Doe." ,"All")
wait(5)
game.Players:Chat(">hat me 18195399374 >hat me 18207669040 >hat me 18196403126")

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local hiddenfling = false
local flingThread 

if not ReplicatedStorage:FindFirstChild("juisdfj0i32i0eidsuf0iok") then
    local detection = Instance.new("Decal")
    detection.Name = "juisdfj0i32i0eidsuf0iok"
    detection.Parent = ReplicatedStorage
end

local function fling()
    local lp = Players.LocalPlayer
    local c, hrp, vel, movel = nil, nil, nil, 0.1

    while hiddenfling do
        RunService.Heartbeat:Wait()
        c = lp.Character
        hrp = c and c:FindFirstChild("HumanoidRootPart")

        if hrp then
            vel = hrp.Velocity
            hrp.Velocity = vel * 10000 + Vector3.new(0, 10000, 0)
            RunService.RenderStepped:Wait()
            hrp.Velocity = vel
            RunService.Stepped:Wait()
            hrp.Velocity = vel + Vector3.new(0, movel, 0)
            movel = -movel
        end
    end
end


local function toggleFling()
    hiddenfling = not hiddenfling
    if hiddenfling then
        flingThread = coroutine.create(fling)
        coroutine.resume(flingThread)
    else
        hiddenfling = true
    end
end
toggleFling()


local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local Animation = Instance.new("Animation")
Animation.AnimationId = "rbxassetid://"

local AnimationTrack = Humanoid:LoadAnimation(Animation)

local function onRunning(speed)
    if speed > 0 then
        if AnimationTrack.IsPlaying then
            AnimationTrack:Stop()
        end
    else
        if not AnimationTrack.IsPlaying then
            AnimationTrack:Play()
        end
    end
end

Humanoid.Running:Connect(onRunning)

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animationId = "rbxassetid://287388049"

local animation = Instance.new("Animation")
animation.AnimationId = animationId

local animationTrack = humanoid:LoadAnimation(animation)

humanoid.WalkSpeed = 16

local function onRunning(speed)
    if speed > 0 then
        if not animationTrack.IsPlaying then
            animationTrack:Play()
        end
    else
        animationTrack:Stop()
    end
end

humanoid.Running:Connect(onRunning)

local animationId = "rbxassetid://2524287767"

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local function playAnimation()
    local animation = Instance.new("Animation")
    animation.AnimationId = animationId

    local animationTrack = humanoid:LoadAnimation(animation)

    animationTrack:Play()
end

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.UserInputType == Enum.UserInputType.MouseButton1 then
        playAnimation()
    end
end)
