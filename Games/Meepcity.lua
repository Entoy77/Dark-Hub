
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("DarkHub", "DarkTheme")

local Tab = Window:NewTab("MeepCity")
local Section = Tab:NewSection(" ")

Section:NewButton("Free Plus", "a", function()
 game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].PLUS.Value = true
end)

Section:NewButton("Free BoomBox GamePass", "a", function()
 game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].BoomBox.Value = true
end)

Section:NewButton("Give Free Money", "a", function()
   loadstring(game:HttpGet("https://pastebin.com/raw/i9XDEKVW"))()
end)
