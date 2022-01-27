-- getgenv().auto and getgenv().speed is required

if getgenv().auto ~= nil then getgenv().auto=not getgenv().auto else getgenv().auto=true end
if not getgenv().speed or type(getgenv().speed) ~= "number" then getgenv().speed = 20 end

local ts = game:GetService("TweenService")
local plr = game:GetService("Players").LocalPlayer
local char = plr.Character

local t1 = ts:Create(char.HumanoidRootPart,TweenInfo.new(0.05),{CFrame = CFrame.new(-49.5, 26.3, 999.75)})
local t2 = ts:Create(char.HumanoidRootPart,TweenInfo.new(getgenv().speed-4),{CFrame = CFrame.new(-49.5, 26.5, 8706.75)})
local t3 = ts:Create(char.HumanoidRootPart,TweenInfo.new(2),{CFrame = CFrame.new(-49.5, -298.5, 9050)})
local t4 = ts:Create(char.HumanoidRootPart,TweenInfo.new(2),{CFrame = CFrame.new(-57.5, -357.5, 9496.5)})

repeat
if not getgenv().auto then break end
t1:Play()
t1.Completed:Wait()
t2:Play()
t2.Completed:Wait()
t3:Play()
t3.Completed:Wait()
t4.Play()
t4.Completed:Wait()
until not getgenv().auto
