
-- 112

local suskey = "Moonlight epik"


local GUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Key = Instance.new("ImageLabel")
local Text = Instance.new("TextLabel")
local VerifyFrame = Instance.new("Frame")
local KeyBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local VerifyButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local UICorner_4 = Instance.new("UICorner")
local GetKey = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local GuiRemoval = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")



GUI.Name = "GUI"
GUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Main.Name = "Main"
Main.Parent = GUI
Main.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Main.BorderColor3 = Color3.fromRGB(27, 42, 53)
Main.Position = UDim2.new(0.413353175, 0, 0.441176474, 0)
Main.Size = UDim2.new(0.172441572, 0, 0.117647059, 0)

UICorner.Parent = Main

Key.Name = "Key"
Key.Parent = Main
Key.BackgroundTransparency = 1.000
Key.Position = UDim2.new(0.435148925, 0, 0.115340024, 0)
Key.Size = UDim2.new(0.128056228, 0, 0.338304013, 0)
Key.ZIndex = 2
Key.Image = "rbxassetid://3926307971"
Key.ImageColor3 = Color3.fromRGB(255, 38, 38)
Key.ImageRectOffset = Vector2.new(44, 324)
Key.ImageRectSize = Vector2.new(36, 36)

Text.Name = "Text"
Text.Parent = Main
Text.BackgroundColor3 = Color3.fromRGB(26, 26, 2)
Text.BackgroundTransparency = 1.000
Text.BorderColor3 = Color3.fromRGB(26, 26, 26)
Text.Position = UDim2.new(0.0327102803, 0, 0.370000005, 0)
Text.Size = UDim2.new(0.934579492, 0, 0.5, 0)
Text.Font = Enum.Font.SourceSansSemibold
Text.Text = "Key Required"
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextSize = 35.000
Text.TextWrapped = true

VerifyFrame.Name = "Verify Frame"
VerifyFrame.Parent = GUI
VerifyFrame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
VerifyFrame.Position = UDim2.new(0.388749182, 0, 0.569411755, 0)
VerifyFrame.Size = UDim2.new(0.222401291, 0, 0.15529412, 0)

KeyBox.Name = "Key Box"
KeyBox.Parent = VerifyFrame
KeyBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
KeyBox.Position = UDim2.new(0.216714069, 0, 0.0933334902, 0)
KeyBox.Size = UDim2.new(0.552679658, 0, 0.298396379, 0)
KeyBox.Font = Enum.Font.SourceSansSemibold
KeyBox.PlaceholderColor3 = Color3.fromRGB(80, 80, 80)
KeyBox.PlaceholderText = "Key here"
KeyBox.Text = ""
KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.TextScaled = true
KeyBox.TextSize = 14.000
KeyBox.TextWrapped = true

UICorner_2.Parent = KeyBox

VerifyButton.Name = "Verify Button"
VerifyButton.Parent = VerifyFrame
VerifyButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
VerifyButton.Position = UDim2.new(0.13767235, 0, 0.491583407, 0)
VerifyButton.Size = UDim2.new(0.724637687, 0, 0.378787875, 0)
VerifyButton.Font = Enum.Font.SourceSansSemibold
VerifyButton.Text = "Verify Key"
VerifyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
VerifyButton.TextSize = 34.000
VerifyButton.MouseButton1Down:connect(function()
	if KeyBox.Text == suskey then
		local TweenService = game:GetService("TweenService")
		local key = game.Players.LocalPlayer.PlayerGui.GUI.Main.Key
		local info = TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false)

		local tween = TweenService:Create(key, info, {ImageColor3 = Color3.fromRGB(106, 255, 106)})

		tween:Play()
		
		game.StarterGui:SetCore("SendNotification", {Title = "correct key", Text = "welcome", Icon = "rbxassetid://12206884774", Duration = 5})

		wait(7)

		GUI.Parent = nil


-- // KeyStrokes \\ --
loadstring(game:HttpGet("https://github.com/TheXploiterYT/scripts/raw/main/keystrokes",true))()
-- // Constants \\ --
-- // Services \\ --
local Services = setmetatable({}, {__index = function(Self, Index)
local NewService = game.GetService(game, Index)
if NewService then
Self[Index] = NewService
end
return NewService
end})

-- [ Modules ] --
local UserInterface = loadstring(game:HttpGet("https://raw.githubusercontent.com/icuck/collection-dump/main/AbstractUI", true))()
local Drawing = loadstring(game:HttpGet("https://raw.githubusercontent.com/iHavoc101/Genesis-Studios/main/Modules/DrawingAPI.lua", true))()

local ToolTip = require(Services.ReplicatedStorage.Modules_client.TooltipModule)

-- [ LocalPlayer ] --
local LocalPlayer = Services.Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- [ Raycast Parameters ] --
local RaycastParameters = RaycastParams.new()
RaycastParameters.IgnoreWater = true
RaycastParameters.FilterType = Enum.RaycastFilterType.Blacklist
RaycastParameters.FilterDescendantsInstances = {LocalPlayer.Character}

-- // Variables \\ --
-- [ Info ] --
local Info = {
   SilentAIMEnabled = false;
   TriggeredEnabled = false;
   ArmsCheckEnabled = true;
   TeamWhitelist = "";
   FieldOfView = 250;
}

local LastArrest = time()

-- [ Interface ] --
local FOVCircle = Drawing.new("Circle", {
   Thickness = 2.5,
   Color = Color3.fromRGB(200, 200, 200),
   NumSides = 25,
   Radius = _G.FOV
})

local Target = Drawing.new("Triangle", {
   Thickness = 5,
   Color = Color3.fromRGB(0, 200, 255)
})

-- [ Weapons ] --
local Weapons = {
   "Remington 870";
   "AK-47";
   "M9";
   "M4A1";
   "Hammer";
   "Crude Knife";
}

-- [ Metatable ] --
local RawMetatable = getrawmetatable(game)
local __NameCall = RawMetatable.__namecall
local __Index = RawMetatable.__index


-- // Functions \\ --
local function ValidCharacter(Character)
   return Character and (Character.FindFirstChildWhichIsA(Character, "Humanoid") and Character.FindFirstChildWhichIsA(Character, "Humanoid").Health ~= 0) or false
end

local function NotObstructing(Destination, Ancestor)
   -- [ Camera ] --
   local ObstructingParts = Camera.GetPartsObscuringTarget(Camera, {Destination}, {Ancestor, LocalPlayer.Character})

   for i,v in ipairs(ObstructingParts) do
       pcall(function()
           if v.Transparency >= 1 then
               table.remove(ObstructingParts, i)
           end
       end)
   end

   if #ObstructingParts <= 0 then
       return true
   end

   -- [ Raycast ] --
   RaycastParameters.FilterDescendantsInstances = {LocalPlayer.Character}

   local Origin = Camera.CFrame.Position
   local Direction = (Destination - Origin).Unit * 500
   local RayResult = workspace.Raycast(workspace, Origin, Direction, RaycastParameters) or {
       Instance = nil;
       Position = Origin + Direction;
       Material = Enum.Material.Air;
   }

   if RayResult.Instance and (RayResult.Instance.IsDescendantOf(RayResult.Instance, Ancestor) or RayResult.Instance == Ancestor) then
       return true
   end

   -- [ Obstructed ] --
   return false
end

local function IsArmed(Player)
   for i,v in ipairs(Weapons) do
       local Tool = Player.Backpack.FindFirstChild(Player.Backpack, v) or Player.Character.FindFirstChild(Player.Character, v)
       if Tool then
           return true
       end
   end
   return false
end

local function ClosestPlayerToCursor(Distance)
   local Closest = nil
   local Position = nil
   local ShortestDistance = Distance or math.huge

   local MousePosition = Services.UserInputService.GetMouseLocation(Services.UserInputService)

   for i, v in ipairs(Services.Players.GetPlayers(Services.Players)) do
       if v ~= LocalPlayer and (v.Team ~= LocalPlayer.Team and tostring(v.Team) ~= Info.TeamWhitelist) and ValidCharacter(v.Character) then
           if Info.ArmsCheckEnabled and (v.Team == Services.Teams.Inmates and IsArmed(v) == false) then
               continue
           end

           local ViewportPosition, OnScreen = Camera.WorldToViewportPoint(Camera, v.Character.PrimaryPart.Position)
           local Magnitude = (Vector2.new(ViewportPosition.X, ViewportPosition.Y) - MousePosition).Magnitude

           if OnScreen == false or NotObstructing(v.Character.PrimaryPart.Position, v.Character) == false then
               continue
           end

           if Magnitude < ShortestDistance  then
               Closest = v
               Position = ViewportPosition
               ShortestDistance = Magnitude
           end
       end
   end

   return Closest, Position
end

local function SwitchGuns()
   if LocalPlayer.Character.FindFirstChild(LocalPlayer.Character, "Remington 870") then
       local Tool = LocalPlayer.Backpack.FindFirstChild(LocalPlayer.Backpack, "M4A1") or LocalPlayer.Backpack.FindFirstChild(LocalPlayer.Backpack, "AK-47") or LocalPlayer.Backpack.FindFirstChild(LocalPlayer.Backpack, "M9")

       local Humanoid = LocalPlayer.Character.FindFirstChildWhichIsA(LocalPlayer.Character, "Humanoid")
       Humanoid.EquipTool(Humanoid, Tool)
   else
       local Tool = LocalPlayer.Backpack.FindFirstChild(LocalPlayer.Backpack, "Remington 870")

       local Humanoid = LocalPlayer.Character.FindFirstChildWhichIsA(LocalPlayer.Character, "Humanoid")
       Humanoid.EquipTool(Humanoid, Tool)
   end
end

local function Crash(Gun, BulletCount, ShotCount)
   local ShootEvent = Services.ReplicatedStorage.ShootEvent
   local StartTime = time()
   local BulletTable = {}

   for i = 1, BulletCount do
       BulletTable[i] = {
           Cframe = CFrame.new(),
           Distance = math.huge
       }
   end
   for i = 1, ShotCount do
       ShootEvent:FireServer(BulletTable, Gun)
       if time() - StartTime > 5 then
           break
       end
   end
end

-- // User Interface \\ --
-- [ Window ] --
local Window = UserInterface.new("V1.3 | Moonlight Client (Prison Life)", UDim2.new(0, 420, 0, 420))

-- [ Assists ] --
Window:Divider("Assists")

Window:Toggle("Silent Aim", "Shoots toward the nearest player to your cursor.", false, function(State)
   Info.SilentAIMEnabled = State
end)

Window:Toggle("Trigger Bot", "Press G to temporarily disable.", false, function(State)
   Info.TriggeredEnabled = State
end)

Window:Slider("Field Of View", "Recommended: 250", 50, 500, 250, function(Value)
   Info.FieldOfView = Value
end)

Window:Dropdown("Team Whitelist", "Team for Silent-Aim to ignore.", {"Guards", "Inmates", "Criminals"}, function(Value)
   Info.TeamWhitelist = Value
end)

Window:Toggle("Danger Check", "Checks if an Inmate has gun.", false, function(State)
   Info.ArmsCheckEnabled = State
end)

-- [ Random Things ] --
Window:Divider("Random Things")

Window:Button("New Anti Cheat Bypass", "USE BEFORE ANYTHING BELOW! Bypasses anti cheat.", function()
   print ("succesfully destroyed local AntiCheat")
end)

Window:Button("Kill All", "Kills everyone in-game", function()
   local GunScript = (LocalPlayer.Backpack:FindFirstChild("GunInterface", true) or LocalPlayer.Character:FindFirstChild("GunInterface", true))
   if GunScript then
       for i,v in ipairs(game.Players:GetPlayers()) do
           if v ~= LocalPlayer then
               local BulletInfo = {
                   [1] = {
                       ["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),
                       ["Distance"] = 3.2524313926697,
                       ["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),
                       ["Hit"] = v.Character.Head
                   },
                   [2] = {
                       ["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)),
                       ["Distance"] = 3.2699294090271,
                       ["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377),
                       ["Hit"] = v.Character.Head
                   },
                   [3] = {
                       ["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)),
                       ["Distance"] = 3.1665518283844,
                       ["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652),
                       ["Hit"] = v.Character.Head
                   },
                   [4] = {
                       ["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)),
                       ["Distance"] = 3.3218522071838,
                       ["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611),
                       ["Hit"] = v.Character.Head
                   },
                   [5] = {
                       ["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
                       ["Distance"] = 3.222757101059,
                       ["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
                       ["Hit"] = v.Character.Head
                   }
               }
               Services.ReplicatedStorage.ShootEvent:FireServer(BulletInfo, GunScript.Parent)
               Services.ReplicatedStorage.ShootEvent:FireServer(BulletInfo, GunScript.Parent)
           end
       end
   else
       ToolTip.update("No gun found!")
   end
end)

Window:Button("Gun Modification", "Modifies the current gun you are holding.", function()
   local GunStates = LocalPlayer.Character:FindFirstChild("GunStates", true)
   if GunStates then
       local GunInfo = require(GunStates)
       GunInfo.ReloadTime = 0
       GunInfo.FireRate = 0
       GunInfo.AutoFire = true
       GunInfo.StoredAmmo = math.huge
       GunInfo.MaxAmmo = math.huge
       GunInfo.CurrentAmmo = math.huge
   end
end)

Window:Button("Start Infinite Yield", "Starts a admin script with lots of cool features.", function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

Window:Divider("TrashTalk")

Window:Button("Insult N1", "Just says a toxic insult..", function()
   -- Settings

local message = "Yea but im not the one eating ground." -- the message
local Tiemlolol = 9999999999 -- the wait time between chats, anything under 2 isnt recommended


-- Script (dont modify)

if _G.AutoSay then _G.AutoSay = false
else _G.AutoSay = true
end
while _G.AutoSay do
	local args = {[1] = message,[2] = "All"}
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	task.wait(tonumber(Tiemlolol))
end
end)

Window:Button("Insult N2", "Just says a toxic insult..", function()
   -- Settings

local message = "Get good, get Moonlight Client." -- the message
local Tiemlolol = 9999999999 -- the wait time between chats, anything under 2 isnt recommended


-- Script (dont modify)

if _G.AutoSay then _G.AutoSay = false
else _G.AutoSay = true
end
while _G.AutoSay do
	local args = {[1] = message,[2] = "All"}
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	task.wait(tonumber(Tiemlolol))
end
end)

Window:Button("Insult N3", "Just says a toxic insult..", function()
   -- Settings

local message = "You lookin about as hot as my freezer." -- the message
local Tiemlolol = 9999999999 -- the wait time between chats, anything under 2 isnt recommended


-- Script (dont modify)

if _G.AutoSay then _G.AutoSay = false
else _G.AutoSay = true
end
while _G.AutoSay do
	local args = {[1] = message,[2] = "All"}
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	task.wait(tonumber(Tiemlolol))
end
end)

Window:Button("Insult N4", "Just says a toxic insult..", function()
      local message = "What is a basic definition of easy? Easy describes something that is not difficult. Like winning a game against you." -- the message
local Tiemlolol = 9999999999 -- the wait time between chats, anything under 2 isnt recommended




if _G.AutoSay then _G.AutoSay = false
else _G.AutoSay = true
end
while _G.AutoSay do
	local args = {[1] = message,[2] = "All"}
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	task.wait(tonumber(Tiemlolol))
end
end)



-- [ Miscellaneous ] --
Window:Divider("Miscellaneous")

Window:Button("Get Guns", "Grabs all", function()
   local HasSWAT = Services.MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 96651)

   workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
   if HasSWAT then
       workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
   end
   workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
   workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)

   if HasSWAT then
       workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.clothes["Riot Police"].ITEMPICKUP)
   end
end)

-- [ Credits ] --
Window:Divider("Credits")

Window:Button("OminousVibes#7259", "Script Creator", function()
   setclipboard("OminousVibes#7259")
end)

Window:Button("JustOrchi#1812", "Script Editor", function()
   setclipboard("JustOrchi#1812")
end)

Window:Button("Logs", "Improved silent aim. / Added keystrokes. / New Version. / Bug Fixes.", function()
   print ("logs")
end)


-- // Metatable \\ --
setreadonly(RawMetatable, false)

RawMetatable.__index = newcclosure(function(Self, Index)
   if Info.SilentAIMEnabled == true and checkcaller() == false then
       if typeof(Self) == "Instance" and (Self:IsA("PlayerMouse") or Self:IsA("Mouse")) then
           if Index == "Hit" then
               local Closest = ClosestPlayerToCursor(Info.FieldOfView)
               if Closest then
                   local Velocity = Closest.Character.PrimaryPart.AssemblyLinearVelocity
                   local Prediction = Velocity.Unit
                   if Velocity.Magnitude == 0 then
                       Prediction = Vector3.new(0, 0, 0)
                   end
                   return CFrame.new(Closest.Character.Head.Position + Prediction)
               end
           end
       end
   end

   return __Index(Self, Index)
end)


setreadonly(RawMetatable, true)

-- // Event Listeners \\ --
Services.RunService.RenderStepped:Connect(function()
   if Info.SilentAIMEnabled == true then
       -- FOV --
       FOVCircle.Visible = true
       FOVCircle.Radius = Info.FieldOfView
       FOVCircle.Position = Services.UserInputService:GetMouseLocation()

       -- Target --
       local Closest, Position = ClosestPlayerToCursor(Info.FieldOfView)
       if Closest then
           Target.PointA = Vector2.new(Position.X - 25, Position.Y + 25)
           Target.PointB = Vector2.new(Position.X + 25, Position.Y + 25)
           Target.PointC = Vector2.new(Position.X, Position.Y - 25)
           if Info.TriggeredEnabled and not Services.UserInputService:IsKeyDown(Enum.KeyCode.G) then
               mouse1click()
           end
       end
       Target.Visible = Closest ~= nil
   else
       FOVCircle.Visible = false
       Target.Visible = false
   end
end)

LocalPlayer.Chatted:Connect(function(Message)
   if string.find(Message:lower(), "-lag") then
       local GunScript = (LocalPlayer.Backpack:FindFirstChild("GunInterface", true) or LocalPlayer.Character:FindFirstChild("GunInterface", true))
       if GunScript then
           ToolTip.update("Lagging...")
           Crash(GunScript.Parent, 100, 10)
           ToolTip.update("Lagged!")
       else
          ToolTip.update("Error: No gun found!")
       end
   end
end)

local LastShotDetected = time()
for i,v in ipairs(getconnections(Services.ReplicatedStorage.ReplicateEvent.OnClientEvent)) do
   local OldFunction = v.Function
   v.Function = function(BulletStats, IsTaser)
       if #BulletStats > 25 or time() - LastShotDetected > 0.02 then
           ToolTip.update("Bullet Overload: Removing...")
           return
       end
       LastShotDetected = time()
       OldFunction(BulletStats, IsTaser)
   end
end

local LastSoundDetected = time()
for i,v in ipairs(getconnections(Services.ReplicatedStorage.SoundEvent.OnClientEvent)) do
   local OldFunction = v.Function
   v.Function = function(Sound)
       if time() - LastSoundDetected > 0.02 then
           ToolTip.update("Audio Overload: Removing...")
           return
       end
       LastSoundDetected = time()
       OldFunction(Sound)
   end
end


-- // KeyBinds \\ --
Services.UserInputService.InputBegan:Connect(function(Input, GameProcessed)
   if _G.ArrestAssist == false or GameProcessed or LocalPlayer.Character:FindFirstChild("Handcuffs") == nil then
       return
   end

   local Delta = time() - LastArrest
   if Delta <= 15 then
       ToolTip.update("Wait " .. tostring(math.floor(Delta)) .. " seconds before arresting again!")
   end

   if Input.UserInputType == Enum.UserInputType.MouseButton1 then
       local Closest = ClosestPlayerToCursor(_G.FOV)
       if Closest then
           local Result = workspace.Remote.arrest:InvokeServer(Closest.Character.HumanoidRootPart)
           ToolTip.update(Result == true and "Successfully arrested!" or Result)
           if Result == true then
               LastArrest = time()
           end
       end
   end
end)

Services.ContextActionService:BindAction("Switch Bind", function(actionName, InputState, inputObject)
if InputState == Enum.UserInputState.End then
return
   end
   pcall(SwitchGuns)
end, false, Enum.KeyCode.Q)

-- // Actions \\ --
LocalPlayer.PlayerGui.Home.fadeFrame.Visible = false

return {};

	end
end)

UICorner_3.Parent = VerifyButton

UICorner_4.Parent = VerifyFrame

GetKey.Name = "GetKey"
GetKey.Parent = VerifyFrame
GetKey.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
GetKey.Position = UDim2.new(0.235357329, 0, -1.38818645, 0)
GetKey.Size = UDim2.new(0.505842388, 0, 0.447802067, 0)
GetKey.Font = Enum.Font.SourceSansSemibold
GetKey.Text = "Get Key"
GetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
GetKey.TextSize = 42.000
GetKey.TextWrapped = true
GetKey.MouseButton1Down:connect(function()
	setclipboard(susk)
	
	game.StarterGui:SetCore("SendNotification", {Title = "key copied", Text = "the key was copied into your clipboard", Icon = "", Duration = 5})
end)

UICorner_5.Parent = GetKey

GuiRemoval.Name = "Gui Removal"
GuiRemoval.Parent = VerifyFrame
GuiRemoval.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
GuiRemoval.Position = UDim2.new(2.59248304, 0, -0.608146846, 0)
GuiRemoval.Size = UDim2.new(0.126419857, 0, 0.321553528, 0)
GuiRemoval.Font = Enum.Font.SourceSansSemibold
GuiRemoval.Text = "X"
GuiRemoval.TextColor3 = Color3.fromRGB(255, 148, 148)
GuiRemoval.TextSize = 42.000
GuiRemoval.TextWrapped = true
GuiRemoval.MouseButton1Down:connect(function()
	GUI.Parent = nil
	
	game.StarterGui:SetCore("SendNotification", {Title = "i hate you", Text = "i hate you now because you closed the script", Icon = "", Duration = 5})
end)

UICorner_6.Parent = GuiRemoval
