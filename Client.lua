local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = false, SaveConfig = true, IntroEnabled = true, IntroText = "Southys PP Key System"})

OrionLib:MakeNotification({
	Name = "Logged in!",
	Content = "You are logged in as "..Player.Name.."!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "test"
_G.KeyInput = "string"

function MakeScriptHub()
    print("Entered Correct Key")
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "Successfully entered the correct key",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end
function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Incorrect Key!",
        Content = "You have entered the wrong key",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "nil",
	PremiumOnly = false
})
Tab:AddTextbox({
	Name = "Enter Key",
	Default = "Enter Key",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})
Tab:AddButton({
	Name = "Check Key",
	Callback = function()
      		if _G.KeyInput == _G.Key then
                MakeScriptHub()
                CorrectKeyNotification()
            else
                IncorrectKeyNotification()
  	end    
})
