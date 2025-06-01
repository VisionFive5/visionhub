local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "[🐝] Grow a Garden 🌻 |  Visionhub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "VisionHub",
   LoadingSubtitle = "by Vision5",
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "[🐝] Grow a Garden 🌻 |  Visionhub",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"vision","hub"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image
Rayfield:Notify({
   Title = "Creator",
   Content = "@visionfive In Discord",
   Duration = 6.5,
   Image = 4483362458,
})

local Label = Tab:CreateLabel("Teleports", 4483362458, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme

local Button = Tab:CreateButton({
   Name = "TP to Gear Shop",
   Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
    -285.973022, 2.99999976, -33.826252,
     0.0976097211, 4.88138667e-08, 0.995224774,
     4.23073168e-08, 1, -5.31975033e-08,
    -0.995224774, 4.72978847e-08, 0.0976097211
)
   end,
})

local Button = Tab:CreateButton({
   Name = "TP to Queen Bee",
   Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
    -99.0080948, 4.08001089, -16.8739891,
     0.990561068, -6.72249953e-08, -0.137072265,
     6.56081411e-08, 1, -1.63134555e-08,
     0.137072265, 7.16641724e-09, 0.990561068
         )
   end,
})

local Button = Tab:CreateButton({
   Name = "TP to HoneyCombpressor",
   Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
    -109.902847, 4.40001345, -16.9929142,
    -0.707134247, 0, -0.707079291,
     0, 1, 0,
     0.707079291, 0, -0.707134247
         )
   end,
})

local Tab2 = Window:CreateTab("Auto Farm", 4483362458) -- Title, Image
local Tab2 = Tab:CreateLabel("Manual Farm", 4483362458, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme

local Button = Tab2:CreateButton({
   Name = "Anti Afk",
   Callback = function()
   local VirtualUser = game:GetService('VirtualUser')
 
game:GetService('Players').LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)
 
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "AntiAFK loaded!",
    Button1 = "Thanks",
    Duration = 5
})
   end,
})

local Tab3 = Window:CreateTab("Misc", 4483362458) -- Title, Image
local Tab3 = Tab:CreateLabel("Remote Event", 4483362458, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme

local Button = Tab3:CreateButton({
   Name = "Get All Fruits / Pets / Seeds",
   Callback = function()
   for i,v in pairs (game.Players:GetChildren()) do
wait()
for i,b in pairs (v.Backpack:GetChildren()) do
b.Parent = game.Players.LocalPlayer.Backpack
end
end
   end,
})

local Button = Tab3:CreateButton({
   Name = "Get Admin Cmds",
   Callback = function()
   game.Players.LocalPlayer:Kick("Soon")
   end,
})

local Button = Tab3:CreateButton({
   Name = "Get Candy Blossom",
   Callback = function()
   local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerStorage = game:GetService("ServerStorage")
local StarterPack = game:GetService("StarterPack")
local LocalPlayer = Players.LocalPlayer

local searchAreas = {
    workspace,
    ReplicatedStorage,
    ServerStorage,
    StarterPack
}

-- Adiciona personagens e mochilas dos jogadores à lista de busca
for _, player in pairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        if player.Character then
            table.insert(searchAreas, player.Character)
        end
        local backpack = player:FindFirstChild("Backpack")
        if backpack then
            table.insert(searchAreas, backpack)
        end
    end
end

local function findItemByName(name)
    for _, area in pairs(searchAreas) do
        for _, obj in pairs(area:GetDescendants()) do
            if obj.Name == name and obj:IsA("Tool") then
                return obj
            end
        end
    end
    return nil
end

local itemName = "Candy Blossom [X1]"
local foundItem = findItemByName(itemName)

if foundItem then
    foundItem.Parent = LocalPlayer:WaitForChild("Backpack")
         end
   end,
})
