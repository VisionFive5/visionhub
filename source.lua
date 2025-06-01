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

local Tab2 = Window:CreateTab("Auto Farm", 4483362458) -- Title, Image

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
   game.Players.LocalPlayer:Kick("XD")
   end,
})
