local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("DarkHub - Run", "Synapse")

local Tab = Window:NewTab("Games")
local Section = Tab:NewSection(" ")

Section:NewButton("Close Darkhub Loader", "Potatoo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/satH3205"))()
end)

Section:NewButton("Meepcity", "how to make scripts lol", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Entoy77/Dark-Hub/main/Games/Meepcity.lua"))()
end)

Section:NewButton("Prison life", "how to make scripts lol", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Entoy77/Dark-Hub/main/Games/PrisonLife.lua"))()
end)
