--- @meta
-- Eluna Class Definitions for AzerothCore
-- Auto-generated definitions for Lua Language Server (sumneko.lua)

-----------------------------------------------------------------------
-- ElunaQuery (database result)
-----------------------------------------------------------------------

--- @class ElunaQuery
local ElunaQuery = {}

--- Returns true if the query has results.
--- @return boolean
function ElunaQuery:IsNull() end

--- Returns the number of rows.
--- @return number
function ElunaQuery:GetRowCount() end

--- Returns the number of columns.
--- @return number
function ElunaQuery:GetColumnCount() end

--- Advances to the next row. Returns false if no more rows.
--- @return boolean
function ElunaQuery:NextRow() end

--- Returns a boolean field value.
--- @param column number Column index (0-based)
--- @return boolean
function ElunaQuery:GetBool(column) end

--- Returns a uint8 field value.
--- @param column number
--- @return number
function ElunaQuery:GetUInt8(column) end

--- Returns a uint16 field value.
--- @param column number
--- @return number
function ElunaQuery:GetUInt16(column) end

--- Returns a uint32 field value.
--- @param column number
--- @return number
function ElunaQuery:GetUInt32(column) end

--- Returns a uint64 field value.
--- @param column number
--- @return number
function ElunaQuery:GetUInt64(column) end

--- Returns an int8 field value.
--- @param column number
--- @return number
function ElunaQuery:GetInt8(column) end

--- Returns an int16 field value.
--- @param column number
--- @return number
function ElunaQuery:GetInt16(column) end

--- Returns an int32 field value.
--- @param column number
--- @return number
function ElunaQuery:GetInt32(column) end

--- Returns an int64 field value.
--- @param column number
--- @return number
function ElunaQuery:GetInt64(column) end

--- Returns a float field value.
--- @param column number
--- @return number
function ElunaQuery:GetFloat(column) end

--- Returns a double field value.
--- @param column number
--- @return number
function ElunaQuery:GetDouble(column) end

--- Returns a string field value.
--- @param column number
--- @return string
function ElunaQuery:GetString(column) end

-----------------------------------------------------------------------
-- Aura
-----------------------------------------------------------------------

--- @class Aura
local Aura = {}

--- Returns the spell ID of the aura.
--- @return number
function Aura:GetAuraId() end

--- Returns the unit that cast the aura.
--- @return Unit
function Aura:GetCaster() end

--- Returns the GUID of the caster.
--- @return number
function Aura:GetCasterGUID() end

--- Returns the level of the caster.
--- @return number
function Aura:GetCasterLevel() end

--- Returns the remaining duration in milliseconds.
--- @return number
function Aura:GetDuration() end

--- Returns the max duration in milliseconds.
--- @return number
function Aura:GetMaxDuration() end

--- Returns the unit the aura is applied to.
--- @return Unit
function Aura:GetOwner() end

--- Returns the stack count.
--- @return number
function Aura:GetStackAmount() end

--- Removes the aura from its owner.
function Aura:Remove() end

--- Sets the remaining duration.
--- @param duration number Duration in milliseconds
function Aura:SetDuration(duration) end

--- Sets the max duration.
--- @param duration number Duration in milliseconds
function Aura:SetMaxDuration(duration) end

--- Sets the stack count.
--- @param amount number Stack amount
function Aura:SetStackAmount(amount) end

-----------------------------------------------------------------------
-- WorldObject (base for Unit, Creature, Player, GameObject)
-----------------------------------------------------------------------

--- @class WorldObject
local WorldObject = {}

--- Returns the object's name.
--- @return string
function WorldObject:GetName() end

--- Returns X coordinate.
--- @return number
function WorldObject:GetX() end

--- Returns Y coordinate.
--- @return number
function WorldObject:GetY() end

--- Returns Z coordinate.
--- @return number
function WorldObject:GetZ() end

--- Returns orientation (facing angle in radians).
--- @return number
function WorldObject:GetO() end

--- Returns X, Y, Z, O.
--- @return number, number, number, number
function WorldObject:GetLocation() end

--- Returns the map ID.
--- @return number
function WorldObject:GetMapId() end

--- Returns the instance ID.
--- @return number
function WorldObject:GetInstanceId() end

--- Returns the zone ID.
--- @return number
function WorldObject:GetZoneId() end

--- Returns the area ID.
--- @return number
function WorldObject:GetAreaId() end

--- Returns the Map object.
--- @return Map
function WorldObject:GetMap() end

--- Returns the distance to another object.
--- @param obj WorldObject
--- @return number
function WorldObject:GetDistance(obj) end

--- Returns the 2D distance to another object.
--- @param obj WorldObject
--- @return number
function WorldObject:GetDistance2d(obj) end

--- Returns the angle to another object.
--- @param obj WorldObject
--- @return number
function WorldObject:GetAngle(obj) end

--- Returns a point at a given distance and angle.
--- @param dist number
--- @param angle number
--- @return number, number
function WorldObject:GetRelativePoint(dist, angle) end

--- Returns creatures within range.
--- @param range number
--- @param entry? number Optional creature entry filter
--- @return Creature[]
function WorldObject:GetCreaturesInRange(range, entry) end

--- Returns players within range.
--- @param range number
--- @return Player[]
function WorldObject:GetPlayersInRange(range) end

--- Returns game objects within range.
--- @param range number
--- @param entry? number Optional entry filter
--- @return GameObject[]
function WorldObject:GetGameObjectsInRange(range, entry) end

--- Returns the nearest creature.
--- @param range number
--- @param entry? number
--- @return Creature|nil
function WorldObject:GetNearestCreature(range, entry) end

--- Returns the nearest game object.
--- @param range number
--- @param entry? number
--- @return GameObject|nil
function WorldObject:GetNearestGameObject(range, entry) end

--- Returns the nearest player.
--- @param range number
--- @return Player|nil
function WorldObject:GetNearestPlayer(range) end

--- Checks if within distance of object.
--- @param obj WorldObject
--- @param dist number
--- @return boolean
function WorldObject:IsWithinDist(obj, dist) end

--- Checks line of sight to object.
--- @param obj WorldObject
--- @return boolean
function WorldObject:IsWithinLoS(obj) end

--- Returns true if object is in front.
--- @param obj WorldObject
--- @param arc? number Arc angle
--- @return boolean
function WorldObject:IsInFront(obj, arc) end

--- Returns true if object is behind.
--- @param obj WorldObject
--- @param arc? number
--- @return boolean
function WorldObject:IsInBack(obj, arc) end

--- Plays a sound directly to a player.
--- @param soundId number
--- @param player Player
function WorldObject:PlayDirectSound(soundId, player) end

--- Plays a distance-attenuated sound.
--- @param soundId number
--- @param player Player
function WorldObject:PlayDistanceSound(soundId, player) end

--- Spawns a creature at the object's location.
--- @param entry number Creature entry ID
--- @param x number
--- @param y number
--- @param z number
--- @param o number Orientation
--- @param spawnType? number 0=manual, 1=timed despawn, 2=dead on dismiss
--- @param despawnTimer? number Despawn timer in ms
--- @return Creature|nil
function WorldObject:SpawnCreature(entry, x, y, z, o, spawnType, despawnTimer) end

--- Summons a game object.
--- @param entry number GameObject entry ID
--- @param x number
--- @param y number
--- @param z number
--- @param o number
--- @param respawnDelay? number
--- @return GameObject|nil
function WorldObject:SummonGameObject(entry, x, y, z, o, respawnDelay) end

--- Returns the phase mask.
--- @return number
function WorldObject:GetPhaseMask() end

--- Sets the phase mask.
--- @param phaseMask number
--- @param update? boolean
function WorldObject:SetPhaseMask(phaseMask, update) end

--- Registers a timed event on this object.
--- @param func function
--- @param delay number Delay in ms
--- @param repeats number 0 = infinite
--- @return number eventId
function WorldObject:RegisterEvent(func, delay, repeats) end

--- Removes a timed event by ID on this object.
--- @param eventId number
function WorldObject:RemoveEventById(eventId) end

--- Removes all timed events on this object.
function WorldObject:RemoveEvents() end

-----------------------------------------------------------------------
-- Unit (extends WorldObject)
-----------------------------------------------------------------------

--- @class Unit : WorldObject
local Unit = {}

--- Returns true if unit is alive.
--- @return boolean
function Unit:IsAlive() end

--- Returns true if unit is dead.
--- @return boolean
function Unit:IsDead() end

--- Returns true if unit is in combat.
--- @return boolean
function Unit:IsInCombat() end

--- Returns true if unit is casting.
--- @return boolean
function Unit:IsCasting() end

--- Returns the unit's current health.
--- @return number
function Unit:GetHealth() end

--- Returns the unit's max health.
--- @return number
function Unit:GetMaxHealth() end

--- Returns health as percentage (0-100).
--- @return number
function Unit:GetHealthPct() end

--- Sets the unit's health.
--- @param health number
function Unit:SetHealth(health) end

--- Sets the unit's max health.
--- @param health number
function Unit:SetMaxHealth(health) end

--- Returns the unit's power (mana/rage/energy/etc).
--- @param type? number Power type (0=mana, 1=rage, 3=energy)
--- @return number
function Unit:GetPower(type) end

--- Returns the unit's max power.
--- @param type? number
--- @return number
function Unit:GetMaxPower(type) end

--- Sets the unit's power.
--- @param amount number
--- @param type? number
function Unit:SetPower(amount, type) end

--- Returns the unit's level.
--- @return number
function Unit:GetLevel() end

--- Returns the unit's race ID.
--- @return number
function Unit:GetRace() end

--- Returns the unit's class ID.
--- @return number
function Unit:GetClass() end

--- Returns the unit's gender (0=male, 1=female).
--- @return number
function Unit:GetGender() end

--- Returns the unit's GUID.
--- @return number
function Unit:GetGUID() end

--- Returns the unit's faction template ID.
--- @return number
function Unit:GetFaction() end

--- Sets the unit's faction.
--- @param factionId number
function Unit:SetFaction(factionId) end

--- Returns the unit's speed for a given move type.
--- @param type number Move type
--- @return number
function Unit:GetSpeed(type) end

--- Sets the unit's speed.
--- @param type number Move type
--- @param speed number Speed multiplier
function Unit:SetSpeed(type, speed) end

--- Returns the unit's display ID.
--- @return number
function Unit:GetDisplayId() end

--- Sets the unit's display ID.
--- @param id number
function Unit:SetDisplayId(id) end

--- Returns the unit's native display ID.
--- @return number
function Unit:GetNativeDisplayId() end

--- Casts a spell on target.
--- @param target Unit|nil
--- @param spell number Spell entry ID
--- @param triggered? boolean
function Unit:CastSpell(target, spell, triggered) end

--- Casts a spell at coordinates.
--- @param x number
--- @param y number
--- @param z number
--- @param spell number
--- @param triggered? boolean
function Unit:CastSpellAoF(x, y, z, spell, triggered) end

--- Stops spellcasting.
--- @param spellType? number
function Unit:StopSpellCast(spellType) end

--- Adds an aura to the unit.
--- @param spell number Spell ID
--- @param target Unit
--- @return Aura|nil
function Unit:AddAura(spell, target) end

--- Returns an aura by spell ID.
--- @param spellId number
--- @return Aura|nil
function Unit:GetAura(spellId) end

--- Returns true if unit has the aura.
--- @param spellId number
--- @return boolean
function Unit:HasAura(spellId) end

--- Removes all auras from the unit.
function Unit:RemoveAllAuras() end

--- Removes an aura by spell ID.
--- @param spellId number
function Unit:RemoveAura(spellId) end

--- Removes arena-specific auras.
function Unit:RemoveArenaAuras() end

--- Returns the unit's current victim (in combat target).
--- @return Unit|nil
function Unit:GetVictim() end

--- Kills the unit.
--- @param target? Unit
function Unit:Kill(target) end

--- Attacks a target.
--- @param target Unit
--- @return boolean
function Unit:Attack(target) end

--- Stops the current attack.
--- @return boolean
function Unit:AttackStop() end

--- Returns a threat value to another unit.
--- @param target Unit
--- @return number
function Unit:GetThreat(target) end

--- Returns the threat list as a table.
--- @return Unit[]
function Unit:GetThreatList() end

--- Adds threat to the unit against another.
--- @param target Unit
--- @param threat number
--- @param schoolMask? number
--- @param spell? number
function Unit:AddThreat(target, threat, schoolMask, spell) end

--- Clears all threat.
function Unit:ClearThreatList() end

--- Resets all threat.
function Unit:ResetAllThreat() end

--- Modifies threat percent.
--- @param target Unit
--- @param percent number
function Unit:ModifyThreatPct(target, percent) end

--- Sends a yell message.
--- @param msg string
--- @param lang number Language (0 = universal)
function Unit:SendUnitYell(msg, lang) end

--- Sends a say message.
--- @param msg string
--- @param lang number
function Unit:SendUnitSay(msg, lang) end

--- Sends an emote.
--- @param emoteId number
function Unit:SendUnitEmote(emoteId) end

--- Sends a whisper to a player.
--- @param msg string
--- @param lang number
--- @param target Player
function Unit:SendUnitWhisper(msg, lang, target) end

--- Plays an in-game cinematic.
--- @param movieId number
function Unit:PlayMovie(movieId) end

--- Makes the unit perform an emote.
--- @param emoteId number
function Unit:PerformEmote(emoteId) end

--- Teleports the unit to coordinates.
--- @param mapId number
--- @param x number
--- @param y number
--- @param z number
--- @param o number
function Unit:NearTeleport(mapId, x, y, z, o) end

--- Moves the unit to chase a target.
--- @param target Unit
--- @param dist? number
--- @param angle? number
function Unit:MoveChase(target, dist, angle) end

--- Moves the unit to follow a target.
--- @param target Unit
--- @param dist? number
--- @param angle? number
function Unit:MoveFollow(target, dist, angle) end

--- Returns to home position.
function Unit:MoveHome() end

--- Moves to idle state.
function Unit:MoveIdle() end

--- Stops all movement.
function Unit:MoveStop() end

--- Makes the unit jump.
--- @param x number
--- @param y number
--- @param z number
--- @param speedXY number
--- @param speedZ number
function Unit:MoveJump(x, y, z, speedXY, speedZ) end

--- Moves to a specific position.
--- @param x number
--- @param y number
--- @param z number
--- @param generatePath? boolean
--- @param forceDestination? boolean
function Unit:MoveTo(x, y, z, generatePath, forceDestination) end

--- Returns the unit's stat value.
--- @param stat number Stat ID (0=Strength, 1=Agility, 2=Stamina, 3=Intellect, 4=Spirit)
--- @return number
function Unit:GetStat(stat) end

--- Returns the unit's base attack time.
--- @param weaponSlot number 0=mainhand, 1=offhand, 2=ranged
--- @return number
function Unit:GetBaseAttackTime(weaponSlot) end

--- Returns true if the unit is a player.
--- @return boolean
function Unit:IsPlayer() end

--- Returns true if the unit is a creature.
--- @return boolean
function Unit:IsCreature() end

--- Returns true if unit is mounted.
--- @return boolean
function Unit:IsMounted() end

--- Returns true if unit is rooted.
--- @return boolean
function Unit:IsRooted() end

--- Returns true if unit is confused.
--- @return boolean
function Unit:IsConfused() end

--- Returns true if unit is fleeing.
--- @return boolean
function Unit:IsFleeing() end

--- Returns the creator GUID of the unit.
--- @return number
function Unit:GetCreatorGUID() end

--- Returns the owner GUID.
--- @return number
function Unit:GetOwnerGUID() end

--- Returns the owner.
--- @return Unit|nil
function Unit:GetOwner() end

--- Sets the unit's level.
--- @param level number
function Unit:SetLevel(level) end

--- Modifies power by an amount.
--- @param amount number
--- @param type? number
function Unit:ModifyPower(amount, type) end

-----------------------------------------------------------------------
-- Creature (extends Unit)
-----------------------------------------------------------------------

--- @class Creature : Unit
local Creature = {}

--- Initiates an attack on a target.
--- @param target Unit
function Creature:AttackStart(target) end

--- Calls nearby creatures for assistance.
function Creature:CallAssistance() end

--- Calls for help within a radius.
--- @param radius number
function Creature:CallForHelp(radius) end

--- Returns true if the creature can aggro.
--- @return boolean
function Creature:CanAggro() end

--- Despawns or unsummons the creature.
--- @param delay? number Delay in ms
function Creature:DespawnOrUnsummon(delay) end

--- Returns the AI name.
--- @return string
function Creature:GetAIName() end

--- Returns the current AI target.
--- @return Unit|nil
function Creature:GetAITarget() end

--- Returns all AI targets.
--- @return Unit[]
function Creature:GetAITargets() end

--- Returns the AI target count.
--- @return number
function Creature:GetAITargetsCount() end

--- Returns the aggro range.
--- @return number
function Creature:GetAggroRange() end

--- Returns the corpse delay.
--- @return number
function Creature:GetCorpseDelay() end

--- Returns the creature family ID.
--- @return number
function Creature:GetCreatureFamily() end

--- Returns the creature's DB table GUID (low part).
--- @return number
function Creature:GetDBTableGUIDLow() end

--- Returns the default movement type.
--- @return number
function Creature:GetDefaultMovementType() end

--- Returns extra flags.
--- @return number
function Creature:GetExtraFlags() end

--- Returns the home position.
--- @return number, number, number, number x, y, z, o
function Creature:GetHomePosition() end

--- Returns NPC flags.
--- @return number
function Creature:GetNPCFlags() end

--- Returns the creature rank.
--- @return number
function Creature:GetRank() end

--- Returns the react state.
--- @return number
function Creature:GetReactState() end

--- Returns the respawn delay.
--- @return number
function Creature:GetRespawnDelay() end

--- Returns the script name.
--- @return string
function Creature:GetScriptName() end

--- Returns the spawn ID.
--- @return number
function Creature:GetSpawnId() end

--- Returns unit flags.
--- @return number
function Creature:GetUnitFlags() end

--- Returns the wander radius.
--- @return number
function Creature:GetWanderRadius() end

--- Returns the waypoint path ID.
--- @return number
function Creature:GetWaypointPath() end

--- Returns true if creature has a quest.
--- @param questId number
--- @return boolean
function Creature:HasQuest(questId) end

--- Returns true if in evade mode.
--- @return boolean
function Creature:IsInEvadeMode() end

--- Returns true if civilian.
--- @return boolean
function Creature:IsCivilian() end

--- Returns true if elite.
--- @return boolean
function Creature:IsElite() end

--- Returns true if dungeon boss.
--- @return boolean
function Creature:IsDungeonBoss() end

--- Returns true if world boss.
--- @return boolean
function Creature:IsWorldBoss() end

--- Returns true if targetable for attack.
--- @param player Player
--- @return boolean
function Creature:IsTargetableForAttack(player) end

--- Starts moving along waypoints.
function Creature:MoveWaypoint() end

--- Removes the corpse.
function Creature:RemoveCorpse() end

--- Respawns the creature.
function Creature:Respawn() end

--- Saves the creature to DB.
function Creature:SaveToDB() end

--- Sets aggro enabled state.
--- @param enable boolean
function Creature:SetAggroEnabled(enable) end

--- Sets the corpse delay.
--- @param delay number Seconds
function Creature:SetCorpseDelay(delay) end

--- Sets the default movement type.
--- @param type number
function Creature:SetDefaultMovementType(type) end

--- Enables or disables gravity.
--- @param disable boolean
function Creature:SetDisableGravity(disable) end

--- Enables or disables reputation gain.
--- @param disable boolean
function Creature:SetDisableReputationGain(disable) end

--- Sets equipment slots.
--- @param mainhand number
--- @param offhand number
--- @param ranged number
function Creature:SetEquipmentSlots(mainhand, offhand, ranged) end

--- Sets the home position.
--- @param x number
--- @param y number
--- @param z number
--- @param o number
function Creature:SetHomePosition(x, y, z, o) end

--- Sets hover state.
--- @param enable boolean
function Creature:SetHover(enable) end

--- Sets NPC flags.
--- @param flags number
function Creature:SetNPCFlags(flags) end

--- Enables or disables call assistance.
--- @param disable boolean
function Creature:SetNoCallAssistance(disable) end

--- Sets react state.
--- @param state number
function Creature:SetReactState(state) end

--- Enables or disables health regeneration.
--- @param enable boolean
function Creature:SetRegeneratingHealth(enable) end

--- Sets respawn delay.
--- @param delay number Seconds
function Creature:SetRespawnDelay(delay) end

--- Sets unit flags.
--- @param flags number
function Creature:SetUnitFlags(flags) end

--- Sets walk mode.
--- @param enable boolean
function Creature:SetWalk(enable) end

--- Sets wander radius.
--- @param radius number
function Creature:SetWanderRadius(radius) end

--- Engages zone in combat with creature.
function Creature:SetInCombatWithZone() end

--- Transforms creature into another entry.
--- @param entry number
function Creature:UpdateEntry(entry) end

--- Selects a new victim.
--- @return Unit|nil
function Creature:SelectVictim() end

--- Gets loot.
--- @return Loot|nil
function Creature:GetLoot() end

--- Gets loot recipient.
--- @return Player|nil
function Creature:GetLootRecipient() end

--- Returns true if creature has loot recipient.
--- @return boolean
function Creature:HasLootRecipient() end

-----------------------------------------------------------------------
-- Player (extends Unit)
-----------------------------------------------------------------------

--- @class Player : Unit
local Player = {}

--- Returns the account ID.
--- @return number
function Player:GetAccountId() end

--- Returns the account name.
--- @return string
function Player:GetAccountName() end

--- Returns the player's IP address.
--- @return string
function Player:GetIp() end

--- Returns the player's team (0=Alliance, 1=Horde).
--- @return number
function Player:GetTeam() end

--- Returns the coinage (copper).
--- @return number
function Player:GetCoinage() end

--- Sets the coinage.
--- @param copper number
function Player:SetCoinage(copper) end

--- Modifies the coinage.
--- @param amount number
function Player:ModifyMoney(amount) end

--- Returns the arena points.
--- @return number
function Player:GetArenaPoints() end

--- Modifies arena points.
--- @param amount number
function Player:ModifyArenaPoints(amount) end

--- Returns the honor points.
--- @return number
function Player:GetHonorPoints() end

--- Modifies honor points.
--- @param amount number
function Player:ModifyHonorPoints(amount) end

--- Returns the lifetime honorable kills.
--- @return number
function Player:GetLifetimeKills() end

--- Returns the player's group.
--- @return Group|nil
function Player:GetGroup() end

--- Returns the player's guild.
--- @return Guild|nil
function Player:GetGuild() end

--- Returns the player's pet.
--- @return Pet|nil
function Player:GetPet() end

--- Returns the currently selected unit.
--- @return Unit|nil
function Player:GetSelection() end

--- Returns the number of free inventory slots.
--- @return number
function Player:GetInventoryFreeSlots() end

--- Returns the number of free bank slots.
--- @return number
function Player:GetBankFreeSlots() end

--- Teleports the player to a location.
--- @param mapId number
--- @param x number
--- @param y number
--- @param z number
--- @param o number
--- @return boolean
function Player:Teleport(mapId, x, y, z, o) end

--- Adds an item to the player's inventory.
--- @param entry number Item entry ID
--- @param count? number Amount (default 1)
--- @return Item|nil
function Player:AddItem(entry, count) end

--- Removes an item from the player's inventory.
--- @param item Item|number Item object or entry ID
--- @param count number Amount to remove
function Player:RemoveItem(item, count) end

--- Returns true if player has the item.
--- @param entry number
--- @param count? number
--- @return boolean
function Player:HasItem(entry, count) end

--- Returns the count of items with given entry.
--- @param entry number
--- @param inBankAlso? boolean
--- @return number
function Player:GetItemCount(entry, inBankAlso) end

--- Returns an item by entry.
--- @param entry number
--- @return Item|nil
function Player:GetItemByEntry(entry) end

--- Returns an item by GUID.
--- @param guid number
--- @return Item|nil
function Player:GetItemByGUID(guid) end

--- Teaches a spell to the player.
--- @param spellId number
function Player:LearnSpell(spellId) end

--- Returns true if player has spell.
--- @param spellId number
--- @return boolean
function Player:HasSpell(spellId) end

--- Removes a spell from the player.
--- @param spellId number
function Player:RemoveSpell(spellId) end

--- Sets a skill level.
--- @param skillId number
--- @param step number
--- @param rankMax number
--- @param rank number
function Player:SetSkill(skillId, step, rankMax, rank) end

--- Returns true if player has the quest.
--- @param questId number
--- @return boolean
function Player:HasQuest(questId) end

--- Adds a gossip menu item.
--- @param icon number Icon ID
--- @param msg string Display text
--- @param sender number Sender ID (used in OnSelect)
--- @param intid number Integer ID (used in OnSelect)
--- @param code? boolean If true, show text input box
--- @param popup? string Popup text
--- @param moneyRequired? number Required money in copper
function Player:GossipMenuAddItem(icon, msg, sender, intid, code, popup, moneyRequired) end

--- Sends the gossip menu to the player.
--- @param npcText number NPC text entry ID
--- @param object WorldObject Creature or GameObject
function Player:GossipSendMenu(npcText, object) end

--- Clears the player's gossip menu items.
function Player:GossipClearMenu() end

--- Closes the gossip menu.
function Player:GossipComplete() end

--- Adds quest gossip items for a creature.
--- @param creature Creature
function Player:GossipAddQuests(creature) end

--- Returns true if player is GM.
--- @return boolean
function Player:IsGM() end

--- Returns true if player is in battleground.
--- @return boolean
function Player:InBattleground() end

--- Returns true if player is in arena.
--- @return boolean
function Player:InArena() end

--- Returns the player's current map ID.
--- @return number
function Player:GetMapId() end

--- Returns the player's zone ID.
--- @return number
function Player:GetZoneId() end

--- Returns the player's area ID.
--- @return number
function Player:GetAreaId() end

--- Returns the player's combo points.
--- @return number
function Player:GetComboPoints() end

--- Returns the player's latency in ms.
--- @return number
function Player:GetLatency() end

--- Returns achievement points.
--- @return number
function Player:GetAchievementPoints() end

--- Sends a system message to the player.
--- @param message string
function Player:SendSystemMessage(message) end

--- Sends a broadcast message (yellow).
--- @param message string
function Player:SendBroadcastMessage(message) end

--- Sends a notification (top right).
--- @param message string
function Player:SendNotification(message) end

--- Sends an area trigger message.
--- @param message string
function Player:SendAreaTriggerMessage(message) end

--- Plays a sound to the player.
--- @param soundId number
function Player:PlaySoundToPlayer(soundId) end

--- Spawns blood effects.
--- @param target Unit
--- @param hit number Hits
function Player:SpawnBloodParticle(target, hit) end

--- Returns true if player can fly.
--- @return boolean
function Player:CanFly() end

--- Gives XP to the player.
--- @param xp number
--- @param victim? Unit
function Player:GiveXP(xp, victim) end

--- Saves the player to DB.
function Player:SaveToDB() end

--- Kicks the player.
function Player:KickPlayer() end

--- Returns the player's name.
--- @return string
function Player:GetName() end

--- Returns the player's GUID.
--- @return number
function Player:GetGUID() end

--- Returns the player's level.
--- @return number
function Player:GetLevel() end

--- Sets the player's level.
--- @param level number
function Player:SetLevel(level) end

--- Resets the player's talents.
--- @param noCostemail? boolean
function Player:ResetTalents(noCostemail) end

--- Resets all spells.
function Player:ResetSpells() end

--- Returns true if the player can complete the quest.
--- @param questId number
--- @return boolean
function Player:CanCompleteQuest(questId) end

--- Completes a quest.
--- @param questId number
function Player:CompleteQuest(questId) end

--- Fails a quest.
--- @param questId number
function Player:FailQuest(questId) end

--- Abandons a quest.
--- @param questId number
function Player:RemoveActiveQuest(questId) end

--- Sets a reputation standing.
--- @param faction number Faction ID
--- @param value number Standing value
function Player:SetReputation(faction, value) end

--- Returns reputation with a faction.
--- @param faction number
--- @return number
function Player:GetReputation(faction) end

--- Returns the player's chat tag (prefix).
--- @return string
function Player:GetChatTag() end

--- Whispers a message to the player.
--- @param message string
--- @param lang number
--- @param sender Unit
function Player:SendUnitWhisper(message, lang, sender) end

--- Resurrects the player.
--- @param x? number
--- @param y? number
--- @param z? number
--- @param saveGraveyard? boolean
function Player:ResurrectPlayer(x, y, z, saveGraveyard) end

-----------------------------------------------------------------------
-- Item
-----------------------------------------------------------------------

--- @class Item : WorldObject
local Item = {}

--- Returns the item entry ID.
--- @return number
function Item:GetEntry() end

--- Returns the item name.
--- @return string
function Item:GetName() end

--- Returns the item GUID.
--- @return number
function Item:GetGUID() end

--- Returns the item count/stack size.
--- @return number
function Item:GetCount() end

--- Sets the item count.
--- @param count number
function Item:SetCount(count) end

--- Returns the item quality (0-6).
--- @return number
function Item:GetQuality() end

--- Returns the item level.
--- @return number
function Item:GetItemLevel() end

--- Returns the required level.
--- @return number
function Item:GetRequiredLevel() end

--- Returns the item class.
--- @return number
function Item:GetClass() end

--- Returns the item subclass.
--- @return number
function Item:GetSubClass() end

--- Returns the sell price.
--- @return number
function Item:GetSellPrice() end

--- Returns the buy price.
--- @return number
function Item:GetBuyPrice() end

--- Returns the buy count.
--- @return number
function Item:GetBuyCount() end

--- Returns the item link.
--- @return string
function Item:GetItemLink() end

--- Returns the owner.
--- @return Player|nil
function Item:GetOwner() end

--- Returns true if item is soulbound.
--- @return boolean
function Item:IsSoulBound() end

--- Returns true if item is a bag.
--- @return boolean
function Item:IsBag() end

--- Returns true if item is equipped.
--- @return boolean
function Item:IsEquipped() end

--- Returns true if item can be traded.
--- @return boolean
function Item:CanBeTraded() end

--- Returns the bag slot.
--- @return number
function Item:GetBagSlot() end

--- Returns the slot in the bag.
--- @return number
function Item:GetSlot() end

--- Saves item to DB.
function Item:SaveToDB() end

-----------------------------------------------------------------------
-- GameObject
-----------------------------------------------------------------------

--- @class GameObject : WorldObject
local GameObject = {}

--- Returns the display ID.
--- @return number
function GameObject:GetDisplayId() end

--- Returns the GO state.
--- @return number
function GameObject:GetGoState() end

--- Sets the GO state.
--- @param state number
function GameObject:SetGoState(state) end

--- Returns the loot state.
--- @return number
function GameObject:GetLootState() end

--- Sets the loot state.
--- @param state number
function GameObject:SetLootState(state) end

--- Returns the loot recipient.
--- @return Player|nil
function GameObject:GetLootRecipient() end

--- Returns the loot recipient group.
--- @return Group|nil
function GameObject:GetLootRecipientGroup() end

--- Returns the spawn ID.
--- @return number
function GameObject:GetSpawnId() end

--- Returns true if GO has a quest.
--- @param questId number
--- @return boolean
function GameObject:HasQuest(questId) end

--- Returns true if GO is active.
--- @return boolean
function GameObject:IsActive() end

--- Returns true if GO is spawned.
--- @return boolean
function GameObject:IsSpawned() end

--- Returns true if GO is a transport.
--- @return boolean
function GameObject:IsTransport() end

--- Despawns the GO.
--- @param delay? number
function GameObject:Despawn(delay) end

--- Respawns the GO.
function GameObject:Respawn() end

--- Removes from world.
function GameObject:RemoveFromWorld() end

--- Saves to DB.
function GameObject:SaveToDB() end

--- Sets respawn delay.
--- @param delay number
function GameObject:SetRespawnDelay(delay) end

--- Sets respawn time.
--- @param time number
function GameObject:SetRespawnTime(time) end

--- Uses door or button.
--- @param delay? number
function GameObject:UseDoorOrButton(delay) end

--- Adds loot to the GO.
--- @param entry number Item entry ID
--- @param mincount number
--- @param maxcount number
--- @param lootMode number
--- @param needsquest boolean
--- @param groupid number
function GameObject:AddLoot(entry, mincount, maxcount, lootMode, needsquest, groupid) end

-----------------------------------------------------------------------
-- Group
-----------------------------------------------------------------------

--- @class Group
local Group = {}

--- Adds a player to the group.
--- @param player Player
--- @return boolean
function Group:AddMember(player) end

--- Converts the group to a raid.
function Group:ConvertToRaid() end

--- Disbands the group.
function Group:Disband() end

--- Returns the group GUID.
--- @return number
function Group:GetGUID() end

--- Returns the group type.
--- @return number
function Group:GetGroupType() end

--- Returns the leader GUID.
--- @return number
function Group:GetLeaderGUID() end

--- Returns a member GUID by name.
--- @param name string
--- @return number
function Group:GetMemberGUID(name) end

--- Returns the subgroup ID of a member.
--- @param guid number
--- @return number
function Group:GetMemberGroup(guid) end

--- Returns all members.
--- @return Player[]
function Group:GetMembers() end

--- Returns the member count.
--- @return number
function Group:GetMembersCount() end

--- Returns true if the subgroup has free slots.
--- @param subgroup number
--- @return boolean
function Group:HasFreeSlotSubGroup(subgroup) end

--- Returns true if the player is an assistant.
--- @param guid number
--- @return boolean
function Group:IsAssistant(guid) end

--- Returns true if this is a BG group.
--- @return boolean
function Group:IsBGGroup() end

--- Returns true if the group is full.
--- @return boolean
function Group:IsFull() end

--- Returns true if LFG group.
--- @return boolean
function Group:IsLFGGroup() end

--- Returns true if the player is the leader.
--- @param guid number
--- @return boolean
function Group:IsLeader(guid) end

--- Returns true if player is a member.
--- @param guid number
--- @return boolean
function Group:IsMember(guid) end

--- Returns true if raid group.
--- @return boolean
function Group:IsRaidGroup() end

--- Removes a player from the group.
--- @param guid number
--- @param method? number
--- @param leader? number
function Group:RemoveMember(guid, method, leader) end

--- Returns true if two players are in the same subgroup.
--- @param player1 Player
--- @param player2 Player
--- @return boolean
function Group:SameSubGroup(player1, player2) end

--- Sends a packet to all group members.
--- @param packet WorldPacket
function Group:SendPacket(packet) end

--- Sets the group leader.
--- @param guid number
function Group:SetLeader(guid) end

--- Sets a member flag.
--- @param guid number
--- @param apply boolean
--- @param flag number
function Group:SetMemberFlag(guid, apply, flag) end

--- Sets a member's subgroup.
--- @param guid number
--- @param subgroup number
function Group:SetMembersGroup(guid, subgroup) end

--- Sets the target icon.
--- @param icon number
--- @param target WorldObject
--- @param setter Player
function Group:SetTargetIcon(icon, target, setter) end

-----------------------------------------------------------------------
-- Guild
-----------------------------------------------------------------------

--- @class Guild
local Guild = {}

--- Adds a player to the guild.
--- @param player Player
--- @param rankId number
function Guild:AddMember(player, rankId) end

--- Removes a player from the guild.
--- @param player Player
--- @param isDisbanding? boolean
function Guild:DeleteMember(player, isDisbanding) end

--- Disbands the guild.
function Guild:Disband() end

--- Returns the creation date.
--- @return number
function Guild:GetCreatedDate() end

--- Returns the guild ID.
--- @return number
function Guild:GetId() end

--- Returns guild info.
--- @return string
function Guild:GetInfo() end

--- Returns the leader Player (if online).
--- @return Player|nil
function Guild:GetLeader() end

--- Returns the leader GUID.
--- @return number
function Guild:GetLeaderGUID() end

--- Returns the message of the day.
--- @return string
function Guild:GetMOTD() end

--- Returns the member count.
--- @return number
function Guild:GetMemberCount() end

--- Returns all members.
--- @return Player[]
function Guild:GetMembers() end

--- Returns the guild name.
--- @return string
function Guild:GetName() end

--- Returns the total bank money.
--- @return number
function Guild:GetTotalBankMoney() end

--- Modifies guild bank money.
--- @param amount number
--- @param add boolean
function Guild:ModifyBankMoney(amount, add) end

--- Sends a message from a player.
--- @param type number 0=guild, 1=officer
--- @param msg string
--- @param player Player
--- @param lang? number
function Guild:SendMessage(type, msg, player, lang) end

--- Sets the guild leader.
--- @param player Player
function Guild:SetLeader(player) end

--- Sets a member's rank.
--- @param player Player
--- @param rank number
function Guild:SetMemberRank(player, rank) end

--- Sets the guild name.
--- @param name string
function Guild:SetName(name) end

--- Updates member data in guild list.
--- @param player Player
--- @param dataid number
--- @param value number
function Guild:UpdateMemberData(player, dataid, value) end

-----------------------------------------------------------------------
-- Map
-----------------------------------------------------------------------

--- @class Map
local Map = {}

--- Returns the area ID at coordinates.
--- @param x number
--- @param y number
--- @param z number
--- @return number
function Map:GetAreaId(x, y, z) end

--- Returns all creatures on the map.
--- @return Creature[]
function Map:GetCreatures() end

--- Returns creatures in an area.
--- @param areaId number
--- @return Creature[]
function Map:GetCreaturesByAreaId(areaId) end

--- Returns the map difficulty.
--- @return number
function Map:GetDifficulty() end

--- Returns height at coordinates.
--- @param x number
--- @param y number
--- @return number
function Map:GetHeight(x, y) end

--- Returns instance data.
--- @return table|nil
function Map:GetInstanceData() end

--- Returns the instance ID.
--- @return number
function Map:GetInstanceId() end

--- Returns the map ID.
--- @return number
function Map:GetMapId() end

--- Returns the map name.
--- @return string
function Map:GetName() end

--- Returns the player count (excluding GMs).
--- @return number
function Map:GetPlayerCount() end

--- Returns all players on the map.
--- @return Player[]
function Map:GetPlayers() end

--- Returns all transports on the map.
--- @return Transport[]
function Map:GetTransports() end

--- Returns a world object by GUID.
--- @param guid number
--- @return WorldObject|nil
function Map:GetWorldObject(guid) end

--- Returns true if arena.
--- @return boolean
function Map:IsArena() end

--- Returns true if battleground.
--- @return boolean
function Map:IsBattleground() end

--- Returns true if dungeon.
--- @return boolean
function Map:IsDungeon() end

--- Returns true if empty.
--- @return boolean
function Map:IsEmpty() end

--- Returns true if heroic.
--- @return boolean
function Map:IsHeroic() end

--- Returns true if raid.
--- @return boolean
function Map:IsRaid() end

--- Saves instance data.
function Map:SaveInstanceData() end

--- Sets the weather.
--- @param zoneId number
--- @param weatherType number
--- @param grade number
function Map:SetWeather(zoneId, weatherType, grade) end
