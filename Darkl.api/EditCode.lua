local NotificationBindable = Instance.new("BindableFunction")
local Msgreq = function(Title,Text,Duration,Button1Text,Button2Text)
    game.StarterGui:SetCore("SendNotification", {
        Title = Title;
        Text = Text;
        Icon = "http://www.roblox.com/asset?id=8061269455";
        Duration = Duration;
        Button1 = Button1Text;
        Button2 = nil;
        Callback = NotificationBindable;
    })
end
 
Msgreq("Notice","Hub Edit With Visual Studio Code",5,nil)
