if getgenv().auto == nil then getgenv().auto=true end
if not getgenv().speed or type(getgenv().speed) ~= "number" then getgenv().speed = 25 end

local ts = game:GetService("TweenService")
local plr = game:GetService("Players").LocalPlayer
local char = plr.Character

game.Workspace.Gravity = 0

repeat
if getgenv().auto == false then break end
game.Workspace.Gravity = 0
char.Humanoid:ChangeState(11)
local t1 = ts:Create(char.HumanoidRootPart,TweenInfo.new(0.05),{CFrame = CFrame.new(-57,74,785)})
local t2 = ts:Create(char.HumanoidRootPart,TweenInfo.new(getgenv().speed-4),{CFrame = CFrame.new(-57,74,8957)})
local t3 = ts:Create(char.HumanoidRootPart,TweenInfo.new(2),{CFrame = CFrame.new(-57,-357,9496)})
local s,e = pcall(function()
t1:Play()
t1.Completed:Wait()
t1:Pause()
t2:Play()
t2.Completed:Wait()
t3:Play()
t3.Completed:Wait()
t3:Pause()
game.Workspace.Gravity = 196.2
end)
if e then print(e) end
plr.CharacterAdded:Wait()
wait(5)
char = plr.Character
until getgenv().auto == false
char.Humanoid:ChangeState(15)
game.Workspace.Gravity = 196.2
