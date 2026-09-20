local revise_Require_Executor = Instance.new("ScreenGui")
revise_Require_Executor.Name = "revise Require Executor"
revise_Require_Executor.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local textButton = Instance.new("TextButton")
textButton.Name = "TextButton"
textButton.FontFace = Font.new(
    "rbxassetid://11702779409",
    Enum.FontStyle.Normal,
    Enum.FontWeight.Heavy
)
textButton.TextColor3 = Color3.new(0.761, 0.765, 1)
textButton.Text = "revise"
textButton.BackgroundColor3 = Color3.new(0.318, 0.333, 0.435)
textButton.TextSize = 18
textButton.Position = UDim2.new(0.482, 0, 0.875, 0)
textButton.RichText = true
textButton.BorderColor3 = Color3.new()
textButton.BorderSizePixel = 0
textButton.Size = UDim2.new(0, 52, 0, 52)
textButton.Parent = revise_Require_Executor

local localScript = Instance.new("LocalScript")
localScript.Name = "LocalScript"
localScript.Parent = textButton

local uICorner = Instance.new("UICorner")
uICorner.Name = "UICorner"
uICorner.Parent = textButton

local smooth_GUI_Dragging = Instance.new("LocalScript")
smooth_GUI_Dragging.Name = "Smooth GUI Dragging"
smooth_GUI_Dragging.Parent = textButton

local frame = Instance.new("Frame")
frame.Name = "Frame"
frame.BackgroundColor3 = Color3.new(0.267, 0.267, 0.349)
frame.Position = UDim2.new(0.265, 0, 0.319, 0)
frame.BorderColor3 = Color3.new()
frame.BorderSizePixel = 0
frame.Size = UDim2.new(0, 551, 0, 30)
frame.Parent = revise_Require_Executor

local execute = Instance.new("TextButton")
execute.Name = "Execute"
execute.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
execute.TextColor3 = Color3.new(1, 1, 1)
execute.BorderColor3 = Color3.new()
execute.Text = "Execute"
execute.BackgroundColor3 = Color3.new(0.337, 0.345, 0.435)
execute.Position = UDim2.new(0.797, 0, 8.6, 0)
execute.BorderSizePixel = 0
execute.TextSize = 14
execute.Size = UDim2.new(0, 104, 0, 40)
execute.Parent = frame

local localScript_2 = Instance.new("LocalScript")
localScript_2.Name = "LocalScript"
localScript_2.Parent = execute

local bG = Instance.new("Frame")
bG.Name = "BG"
bG.BackgroundColor3 = Color3.new(0.247, 0.247, 0.247)
bG.BorderColor3 = Color3.new()
bG.Position = UDim2.new(0, 0, 8.4, 0)
bG.Active = true
bG.BorderSizePixel = 0
bG.Size = UDim2.new(0, 551, 0, 54)
bG.Parent = frame

local smooth_GUI_Dragging_2 = Instance.new("LocalScript")
smooth_GUI_Dragging_2.Name = "Smooth GUI Dragging"
smooth_GUI_Dragging_2.Parent = frame

local textBox = Instance.new("TextBox")
textBox.Name = "TextBox"
textBox.FontFace = Font.new("rbxassetid://16658246179")
textBox.TextColor3 = Color3.new()
textBox.BorderColor3 = Color3.new()
textBox.Text = ""
textBox.BackgroundColor3 = Color3.new(0.361, 0.388, 0.49)
textBox.TextSize = 16
textBox.TextYAlignment = Enum.TextYAlignment.Top
textBox.BackgroundTransparency = 0.25
textBox.Position = UDim2.new(0, 0, 1, 0)
textBox.TextXAlignment = Enum.TextXAlignment.Left
textBox.PlaceholderText = "hi"
textBox.BorderSizePixel = 0
textBox.Size = UDim2.new(0, 551, 0, 222)
textBox.Parent = frame

local tEXTLOGO = Instance.new("TextLabel")
tEXTLOGO.Name = "TEXTLOGO"
tEXTLOGO.FontFace = Font.new(
    "rbxassetid://11702779409",
    Enum.FontStyle.Normal,
    Enum.FontWeight.Heavy
)
tEXTLOGO.TextColor3 = Color3.new(0.824, 0.851, 1)
tEXTLOGO.Text = "revise"
tEXTLOGO.BackgroundColor3 = Color3.new(1, 1, 1)
tEXTLOGO.BorderSizePixel = 0
tEXTLOGO.TextScaled = true
tEXTLOGO.BackgroundTransparency = 1
tEXTLOGO.Position = UDim2.new(0.443, 0, 0.133, 0)
tEXTLOGO.BorderColor3 = Color3.new()
tEXTLOGO.TextWrapped = true
tEXTLOGO.TextSize = 14
tEXTLOGO.Size = UDim2.new(0, 62, 0, 21)
tEXTLOGO.Parent = frame

local executeEvent = Instance.new("RemoteEvent")
executeEvent.Name = "ExecuteEvent"
executeEvent.Parent = frame

local script = Instance.new("Script")
script.Name = "Script"
script.Parent = executeEvent

local loadstring = Instance.new("ModuleScript")
loadstring.Name = "Loadstring"
loadstring.Parent = script

local rerubi = Instance.new("ModuleScript")
rerubi.Name = "Rerubi"
rerubi.Parent = loadstring

local credits = Instance.new("Script")
credits.Name = "Credits"
credits.Enabled = false
credits.Disabled = true
credits.Parent = loadstring

local luaZ = Instance.new("ModuleScript")
luaZ.Name = "LuaZ"
luaZ.Parent = loadstring

local luaU = Instance.new("ModuleScript")
luaU.Name = "LuaU"
luaU.Parent = loadstring

local luaX = Instance.new("ModuleScript")
luaX.Name = "LuaX"
luaX.Parent = loadstring

local luaY = Instance.new("ModuleScript")
luaY.Name = "LuaY"
luaY.Parent = loadstring

local luaP = Instance.new("ModuleScript")
luaP.Name = "LuaP"
luaP.Parent = loadstring

local luaK = Instance.new("ModuleScript")
luaK.Name = "LuaK"
luaK.Parent = loadstring
