local Owner = {
    246956770,
}

function isHumanoid(state)
    if game:GetService('Players'):FindFirstChild(state).Character:FindFirstChild('Humanoid') then
        return true
    end
    return false
end

function giveEmoji(who, emoji)
    if isHumanoid(who) then
        game:GetService('Players'):FindFirstChild(who).Character:FindFirstChildOfClass('Humanoid').DisplayName = ('['..emoji..'] ' .. tostring(game:GetService('Players'):FindFirstChild(who).DisplayName))
    end
end

local Indentify = function()
    for i,v in pairs(game:GetService('Players'):GetChildren()) do
        if table.find(Owner, v.UserId) then
            giveEmoji(v.Name, '👑🔨 Script Owner 👑🔨')
        end
    end
end
