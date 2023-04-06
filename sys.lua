local OWNERS = {
    246956770,
}
local ADMINS = {
    2403188125,
}
local MODS = {
    235843447,
    1666093829,
}
local STARS = {
   4219422368,
}

local formatNumber = (function(n)
    n = tostring(n)
    return n:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
end)

local function checkswag()
    for i,v in pairs(game:GetService('Workspace').Players:GetChildren()) do
        if v:FindFirstChild('UpperTorso') then
            if not v:FindFirstChild('UpperTorso'):FindFirstChild('OriginalSize') then
                local plrcheck = game:GetService('Players'):FindFirstChild(v.Name)
                if plrcheck then
                    local plrID = game:GetService('Players'):FindFirstChild(v.Name).UserId
                    if plrID == 1 or plrID == 2 or plrID == 3 then
                        if v:FindFirstChildWhichIsA('Humanoid') then           
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💪]' .. game.Players[v.Name].DisplayName) 
                        end
            else
                local plrcheck = game.Players:FindFirstChild(v.Name)
                if plrcheck then
                    local plrID = game.Players:FindFirstChild(v.Name).UserId
                    if table.find(OWNERS, plrID) then
                        if v:FindFirstChildWhichIsA('Humanoid') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎]' .. game.Players[v.Name].DisplayName)
                        end
                    elseif table.find(ADMINS, plrID) then
                        if v:FindFirstChildWhichIsA('Humanoid') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎]' .. game.Players[v.Name].DisplayName)
                        end
                    elseif table.find(MODS, plrID) then
                        if v:FindFirstChildWhichIsA('Humanoid') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🍆]' .. game.Players[v.Name].DisplayName)
                        end
           
                    elseif table.find(STARS, plrID) then
                        if v:FindFirstChildWhichIsA('Humanoid') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]' .. game.Players[v.Name].DisplayName)
                        end
                    end
                end
            end
        end
    end
end

local succ, errr = pcall(checkswag)
end
end
