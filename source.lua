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
      Key = {"vision","hub","goat"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
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
local Label = Tab2:CreateLabel("Manual Farm", 4483362458, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme

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

local Button = Tab:CreateButton({
   Name = "Auto Sell",
   Callback = function()
   local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")

local originalCFrame = hrp.CFrame

hrp.CFrame = CFrame.new(
    91.6856689, 2.99960613, 0.405863285,
     0, 0, 1,
     0, 1, 0,
    -1, 0, 0
)

local remote = ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("Sell_Inventory")

remote:FireServer()
task.wait(0.2)
remote:FireServer()

task.wait(3)

hrp.CFrame = originalCFrame
   end,
})

local Tab3 = Window:CreateTab("Misc", 4483362458) -- Title, Image
local Label = Tab3:CreateLabel("Others", 4483362458, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme

local Button = Tab3:CreateButton({
   Name = "Steal All Seeds in Server [Serversided]",
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
   Name = "Admin Commands",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/Nameless-Admin/main/Source.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Dupe Item",
   Callback = function()
   local player = game.Players.LocalPlayer
local backpack = player.Backpack
local replicatedStorage = game:GetService("ReplicatedStorage")

-- Função para duplicar o item
local function duplicateItem()
    while true do
        local currentTool = player.Character:FindFirstChildOfClass("Tool") -- Encontra a ferramenta que o jogador está segurando.

        if currentTool then
            local clonedTool = currentTool:Clone() -- Clona a ferramenta.
            clonedTool.Parent = backpack -- Adiciona a ferramenta clonada de volta à mochila.
        end
        
        wait(1) -- Espera 1 segundo antes de tentar duplicar novamente
    end
end

-- Inicia a duplicação
duplicateItem()

   end,
})
