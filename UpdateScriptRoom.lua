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
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Entoy77/Dark-Hub/main/DarkHub_Assets/.../TestingModule/RunEvent.lua"))()
    end
})

Page.Button({
    Text = "Open Credits",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Entoy77/Dark-Hub/main/Darkl.api/LOL/Pages/CreditPage"))()
    end
})

Page.Button({
    Text = "Close Loader",
    Callback = function()
       loadstring(game:HttpGet("https://pastebin.com/raw/1g0FRFFU"))()
    end
})
