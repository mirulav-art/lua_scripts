-- NPC Entry: 16396
-- Event: OnEnterCombat -> Yell

local NPC_ENTRY = 16396

local function OnEnterCombat(event, creature, target)
    creature:SendUnitYell("Aha, stai ca pun mana pe tine !", 0);

end



RegisterCreatureEvent(NPC_ENTRY, 1, OnEnterCombat)
