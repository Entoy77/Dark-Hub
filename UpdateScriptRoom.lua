-- dont use

local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
     Title = "Dark Hub - Loader",
     Style = 3,
     SizeX = 400,
     SizeY = 100,
     Theme = "Dark"
})

local Page = UI.New({
    Title = "Loader"
})

Page.Button({
    Text = "Load",
    Callback = function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/Entoy77/Dark-Hub/main/Games/Meepcity.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Entoy77/Dark-Hub/main/Games/PrisonLife.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Entoy77/Dark-Hub/main/Messages/MsgFolder/If%20No%20Works%20whats%20is"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Entoy77/Dark-Hub/main/Messages/MsgFolder/VersionEdition"))()
    end
})

Page.Button({
    Text = "Open Credits",
    Callback = function()
       loadstring(game:HttpGet("https://pastebin.com/raw/satH3205"))()
    end
})
