local NotificationBindable = Instance.new("BindableFunction")
local Msgreq = function(Title,Text,Duration,Button1Text,Button2Text)
    game.StarterGui:SetCore("SendNotification", {
        Title = Title;
        Text = Text;
        Icon = "CLIENTERROR";
        Duration = Duration;
        Button1 = Button1Text;
        Button2 = nil;
        Callback = NotificationBindable;
    })
end
 
Msgreq("DKHAPI.json","DarkHub Version Beta",5,nil)
