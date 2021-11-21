local NotificationBindable = Instance.new("BindableFunction")
local Msgreq = function(Title,Text,Duration,Button1Text,Button2Text)
    game.StarterGui:SetCore("SendNotification", {
        Title = Title;
        Text = Text;
        Icon = "http://www.roblox.com/asset?id=8061259309";
        Duration = Duration;
        Button1 = Button1Text;
        Button2 = nil;
        Callback = NotificationBindable;
    })
end
 
Msgreq("Darkl.Api","Made With Visual Studio",5,nil)
