-- NPC Entry: 16396

local NPC_ENTRY = 16396
local spellTimer = 0
local spellTimer2 = 0

local function OnEnterCombat(event, creature, target)
    creature:SendUnitYell("Aha, stai ca pun mana pe tine " .. target:GetName() .. "!", 0)
    creature:CastSpell(target, 71961, true)
    spellTimer = 10000
    spellTimer2 = 20000
end

local function OnAIUpdate(event, creature, diff)
    if not creature:IsInCombat() then return end

    spellTimer = spellTimer - diff
    if spellTimer <= 0 then
        local target = creature:GetVictim()
        if target then
            creature:CastSpell(target, 37572, true)
        end
        spellTimer = 10000
    end

    spellTimer2 = spellTimer2 - diff
    if spellTimer2 <= 0 then
        local target = creature:GetVictim()
        if target then
            creature:CastSpell(target, 69652, true)
        end
        spellTimer2 = 20000
    end
end

RegisterCreatureEvent(NPC_ENTRY, 1, OnEnterCombat)
RegisterCreatureEvent(NPC_ENTRY, 7, OnAIUpdate)
