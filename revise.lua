-- GUI to Lua
-----
-- Version: 2.0.
-- Made by chrisopdemobiel.

-- Instances:

local reviseRequireExecutor = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local TEXTLOGO = Instance.new("TextLabel")
local BG = Instance.new("Frame")
local Execute = Instance.new("TextButton")
local TextButton = Instance.new("TextButton")

--Properties:

reviseRequireExecutor.Name = "revise Require Executor"
reviseRequireExecutor.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
reviseRequireExecutor.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = reviseRequireExecutor
Frame.BackgroundColor3 = Color3.fromRGB(68, 68, 89)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.26543209, 0, 0.318668246, 0)
Frame.Size = UDim2.new(0, 551, 0, 30)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(92, 99, 125)
TextBox.BackgroundTransparency = 0.250
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0, 0, 1, 0)
TextBox.Size = UDim2.new(0, 551, 0, 222)
TextBox.Font = Enum.Font.Unknown
TextBox.PlaceholderText = "hi"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 16.000
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

TEXTLOGO.Name = "TEXTLOGO"
TEXTLOGO.Parent = Frame
TEXTLOGO.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TEXTLOGO.BackgroundTransparency = 1.000
TEXTLOGO.BorderColor3 = Color3.fromRGB(0, 0, 0)
TEXTLOGO.BorderSizePixel = 0
TEXTLOGO.Position = UDim2.new(0.442831218, 0, 0.13333334, 0)
TEXTLOGO.Size = UDim2.new(0, 62, 0, 21)
TEXTLOGO.Font = Enum.Font.Unknown
TEXTLOGO.Text = "revise"
TEXTLOGO.TextColor3 = Color3.fromRGB(210, 217, 255)
TEXTLOGO.TextScaled = true
TEXTLOGO.TextSize = 14.000
TEXTLOGO.TextWrapped = true

BG.Name = "BG"
BG.Parent = Frame
BG.Active = true
BG.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
BG.BorderColor3 = Color3.fromRGB(0, 0, 0)
BG.BorderSizePixel = 0
BG.Position = UDim2.new(0, 0, 8.39999866, 0)
BG.Size = UDim2.new(0, 551, 0, 54)

Execute.Name = "Execute"
Execute.Parent = Frame
Execute.BackgroundColor3 = Color3.fromRGB(86, 88, 111)
Execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
Execute.BorderSizePixel = 0
Execute.Position = UDim2.new(0.796733201, 0, 8.60000038, 0)
Execute.Size = UDim2.new(0, 104, 0, 40)
Execute.Font = Enum.Font.SourceSans
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextSize = 14.000

TextButton.Parent = reviseRequireExecutor
TextButton.BackgroundColor3 = Color3.fromRGB(81, 85, 111)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.482106686, 0, 0.875148654, 0)
TextButton.Size = UDim2.new(0, 52, 0, 52)
TextButton.Font = Enum.Font.Unknown
TextButton.Text = "revise"
TextButton.TextColor3 = Color3.fromRGB(194, 195, 255)
TextButton.TextSize = 18.000

-- Scripts:

local function YNCU_fake_script() -- Frame.Smooth GUI Dragging 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
	
end
coroutine.wrap(YNCU_fake_script)()
local function UUYPP_fake_script() -- Execute.LocalScript 
	local script = Instance.new('LocalScript', Execute)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.ExecuteEvent:FireServer(script.Parent.Parent.TextBox.Text)
		end)
end
coroutine.wrap(UUYPP_fake_script)()
local function WSXPCM_fake_script() -- TextButton.Smooth GUI Dragging 
	local script = Instance.new('LocalScript', TextButton)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
	
end
coroutine.wrap(WSXPCM_fake_script)()
local function OKESGL_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	--You dont need to delete this text.
	--PUT INSIDE a BUTTON in StarterGui
	--Make sure to make a frame for the menu to pop up then go to properties > Visible [Off]
	script.Parent.MouseButton1Click:Connect (function()
		script.Parent.Parent.Frame.Visible = not script.Parent.Parent.Frame.Visible
	end)
end
coroutine.wrap(OKESGL_fake_script)()

