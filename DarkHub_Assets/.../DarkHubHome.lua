local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
     Title = "TestUI",
     Style = 3,
     SizeX = 400,
     SizeY = 100,
     Theme = "Light"
})

local Page = UI.New({
    Title = "Page"
})

Page.Button({
    Text = "Button1",
    Callback = function()
       Print("U Press the button")
    end
})

Page.Button({
    Text = "Print hi,
    Callback = function()
       print("hi :3")
    end
})
