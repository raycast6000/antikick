wait(3)

xpcall(function()
    OldNameCall = hookmetamethod(game.Players.LocalPlayer, "__namecall", function(Self, ...)
    local Args = {...}
    local NamecallMethod = getnamecallmethod()

    if Self == game.Players.LocalPlayer and NamecallMethod == "Kick" then
        return nil
    end

    return OldNameCall(Self, ...)
    end)

    print("Anti Kick Enabled.")
end, function(e)
    print(e)
end)