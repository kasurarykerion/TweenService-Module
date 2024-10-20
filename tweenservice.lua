--[[ Tutorial: Using TweenService to Animate Objects in Roblox
Introduction
TweenService is a service in Roblox that allows you to create smooth animations by interpolating object properties over a period of time. This tutorial will show you how to use TweenService to animate objects in Roblox and understood TweenService.
]]--  

-- Step 1: Accessing TweenService 
-- Before you start using TweenService, you need add it into your modulescript ( Located in replicatedstorage )
```lua
local TweenService = game:GetService("TweenService") ```

-- local TweenService declares a local variables named TweenService
-- game:GetService("TweenService") game is a global variable that represents the entire Roblox game environment. It provides access to all services and objects in your game.
-- GetService is a method of the game object that retrieves a specific service by its name. In this case, it is looking for the service called "TweenService".

-- Example 1: We gonna move a object

--[[ Access TweenService
local TweenService = game:GetService("TweenService")

-- Create a new Part ( you can change it and do like a sphere or idk and you can change the vector and ect )
local part = Instance.new("Part")
part.Size = Vector3.new(4, 1, 2)
part.Position = Vector3.new(0, 5, 0)
part.Anchored = true  
part.Parent = workspace

-- Create TweenInfo
local tweenInfo = TweenInfo.new(
    2,  -- Duration of 2 seconds
    Enum.EasingStyle.Quad,  -- Style
    Enum.EasingDirection.Out  -- direction
)

-- The New Position
local goal = {}
goal.Position = Vector3.new(0, 5, 10)  -- The final position of the Part

-- Create the tween
local tween = TweenService:Create(part, tweenInfo, goal)

-- Start the tween
tween:Play() ]]--

]]--

--[[ Conclusion

With TweenService, you can create smooth animations in Roblox to enhance the user experience of your games. Have fun experimenting with different properties and animation styles!


### Step 4: Write Your Script in roblox studio ]]--

-- Access TweenService
```lua
local TweenService = game:GetService("TweenService")

-- Example 1: Moving an Object
local part1 = Instance.new("Part")
part1.Size = Vector3.new(4, 1, 2)
part1.Position = Vector3.new(0, 5, 0)
part1.Anchored = true
part1.Parent = workspace

local tweenInfo1 = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local goal1 = {Position = Vector3.new(0, 5, 10)}
local tween1 = TweenService:Create(part1, tweenInfo1, goal1)
tween1:Play()

-- Example 2: Animating Multiple Properties

local part2 = Instance.new("Part")
part2.Size = Vector3.new(4, 1, 2)
part2.Position = Vector3.new(0, 5, 0)
part2.Anchored = true
part2.Parent = workspace

local tweenInfo2 = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local goal2 = {
    Position = Vector3.new(0, 5, 10),
    Size = Vector3.new(2, 1, 2),
    Color = Color3.fromRGB(255, 0, 0)
}
local tween2 = TweenService:Create(part2, tweenInfo2, goal2)
tween2:Play()
```

--Handling Tween Events
--You can listen for events to know when the tween has finished:
```lua
tween.Completed:Connect(function(status)
    if status == Enum.PlaybackState.Completed then
        print("Tween completed successfully!")
    end
end) ```
