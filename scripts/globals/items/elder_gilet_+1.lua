-----------------------------------
-- ID: 11280
-- Item: elder gilet +1
-- Teleport's user to Purgonorgo Isle
-----------------------------------
local itemObject = {}

require("scripts/globals/teleports")

itemObject.onItemCheck = function(target)
    local result = 0
    if not target:hasVisitedZone(4) then
        result = 56
    end

    return result
end

itemObject.onItemUse = function(target)
    xi.teleport.to(target, xi.teleport.id.PURGONORGO)
end

return itemObject
