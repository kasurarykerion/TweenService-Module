# TweenService-Module
Tutorial : Using TweenService to Animate Objects in Roblox

# TweenService Tutorial in Roblox


## Introduction

This tutorial explains how to use `TweenService` in Roblox to create smooth animations for game objects. Tweening allows you to interpolate properties of objects over a specified duration, enhancing the visual experience in your games.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Accessing TweenService](#accessing-tweenservice)
- [Example 1: Moving an Object](#example-1-moving-an-object)
- [Example 2: Animating Multiple Properties](#example-2-animating-multiple-properties)
- [Handling Tween Events](#handling-tween-events)
- [Conclusion](#conclusion)

## Prerequisites

- Basic understanding of Roblox Studio and Lua programming.
- A Roblox account and access to Roblox Studio.

## Getting Started

1. **Open Roblox Studio** and create a new project.
2. **Insert a Script** into the workspace where you want to use the TweenService.

## Accessing TweenService

To use `TweenService`, you need to access it in your script:

```lua
local TweenService = game:GetService("TweenService") ```

## Example 1: Moving an Object
Here’s how to create a simple animation that moves a part:

```lua

## Access TweenService
local TweenService = game:GetService("TweenService")

-- Create a new Part
local part = Instance.new("Part")
part.Size = Vector3.new(4, 1, 2)
part.Position = Vector3.new(0, 5, 0)
part.Anchored = true  -- Ensure the Part doesn't fall
part.Parent = workspace

-- Create TweenInfo
local tweenInfo = TweenInfo.new(
    2,  -- Duration of 2 seconds
    Enum.EasingStyle.Quad,  -- Easing style
    Enum.EasingDirection.Out  -- Easing direction
)

-- Define the position
local goal = {}
goal.Position = Vector3.new(0, 5, 10)  -- The final position of the Part

-- Create the tween
local tween = TweenService:Create(part, tweenInfo, goal)

-- Start the tween
tween:Play() ```
