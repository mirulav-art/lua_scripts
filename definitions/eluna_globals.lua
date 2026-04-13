--- @meta
-- Eluna Global Functions for AzerothCore
-- Auto-generated definitions for Lua Language Server (sumneko.lua)

-----------------------------------------------------------------------
-- EVENT REGISTRATION
-----------------------------------------------------------------------

--- Registers a creature event handler for a specific creature entry.
--- @param entry number Creature entry ID
--- @param event number Event ID (see CREATURE_EVENT_*)
--- @param func function Callback function
function RegisterCreatureEvent(entry, event, func) end

--- Registers a creature event handler for ALL creatures.
--- @param event number Event ID
--- @param func function Callback function
function RegisterAllCreatureEvent(event, func) end

--- Registers a creature event handler for a unique creature by GUID.
--- @param guid number Creature GUID
--- @param instanceId number Instance ID
--- @param event number Event ID
--- @param func function Callback function
function RegisterUniqueCreatureEvent(guid, instanceId, event, func) end

--- Registers a creature gossip event handler.
--- @param entry number Creature entry ID
--- @param event number 1=OnHello, 2=OnSelect
--- @param func function Callback function
function RegisterCreatureGossipEvent(entry, event, func) end

--- Registers a player event handler.
--- @param event number Event ID
--- @param func function Callback function
function RegisterPlayerEvent(event, func) end

--- Registers a server event handler.
--- @param event number Event ID
--- @param func function Callback function
function RegisterServerEvent(event, func) end

--- Registers a GameObject event handler.
--- @param entry number GameObject entry ID
--- @param event number Event ID
--- @param func function Callback function
function RegisterGameObjectEvent(entry, event, func) end

--- Registers a GameObject gossip event handler.
--- @param entry number GameObject entry ID
--- @param event number 1=OnHello, 2=OnSelect
--- @param func function Callback function
function RegisterGameObjectGossipEvent(entry, event, func) end

--- Registers an item gossip event handler.
--- @param entry number Item entry ID
--- @param event number 1=OnHello, 2=OnSelect
--- @param func function Callback function
function RegisterItemGossipEvent(entry, event, func) end

--- Registers an item event handler.
--- @param entry number Item entry ID
--- @param event number Event ID
--- @param func function Callback function
function RegisterItemEvent(entry, event, func) end

--- Registers a group event handler.
--- @param event number Event ID
--- @param func function Callback function
function RegisterGroupEvent(event, func) end

--- Registers a guild event handler.
--- @param event number Event ID
--- @param func function Callback function
function RegisterGuildEvent(event, func) end

--- Registers a battleground event handler.
--- @param event number Event ID
--- @param func function Callback function
function RegisterBGEvent(event, func) end

--- Registers a map event handler.
--- @param mapId number Map ID
--- @param event number Event ID
--- @param func function Callback function
function RegisterMapEvent(mapId, event, func) end

--- Registers an instance event handler.
--- @param mapId number Map ID
--- @param instanceId number Instance ID
--- @param event number Event ID
--- @param func function Callback function
function RegisterInstanceEvent(mapId, instanceId, event, func) end

--- Registers a player gossip event handler.
--- @param event number 1=OnHello, 2=OnSelect
--- @param func function Callback function
function RegisterPlayerGossipEvent(event, func) end

--- Registers a spell event handler.
--- @param entry number Spell entry ID
--- @param event number Event ID
--- @param func function Callback function
function RegisterSpellEvent(entry, event, func) end

--- Registers a packet event handler.
--- @param entry number Opcode
--- @param event number Event ID
--- @param func function Callback function
function RegisterPacketEvent(entry, event, func) end

-----------------------------------------------------------------------
-- TIMED EVENTS
-----------------------------------------------------------------------

--- Creates a timed event.
--- @param func function Callback function
--- @param delay number Delay in milliseconds
--- @param repeats number Number of repeats (0 = infinite)
--- @return number eventId
function CreateLuaEvent(func, delay, repeats) end

--- Removes a timed event by ID.
--- @param eventId number Event ID returned by CreateLuaEvent
function RemoveEventById(eventId) end

--- Removes all timed events.
function RemoveEvents() end

-----------------------------------------------------------------------
-- PLAYER UTILITIES
-----------------------------------------------------------------------

--- Returns a Player object by GUID.
--- @param guid number Player GUID
--- @return Player|nil
function GetPlayerByGUID(guid) end

--- Returns a Player object by name.
--- @param name string Player name
--- @return Player|nil
function GetPlayerByName(name) end

--- Returns a table of all online Players.
--- @return Player[]
function GetPlayersInWorld() end

--- Returns the number of online players.
--- @return number
function GetPlayerCount() end

--- Kicks a player by GUID.
--- @param guid number Player GUID
function Kick(guid) end

--- Bans an account.
--- @param banMode number 0=account, 1=ip, 2=character
--- @param nameOrIp string
--- @param duration string Duration string
--- @param reason string Reason
function Ban(banMode, nameOrIp, duration, reason) end

--- Saves all online players.
function SaveAllPlayers() end

-----------------------------------------------------------------------
-- GUILD UTILITIES
-----------------------------------------------------------------------

--- Returns a Guild by name.
--- @param name string Guild name
--- @return Guild|nil
function GetGuildByName(name) end

--- Returns a Guild by leader GUID.
--- @param guid number Leader GUID
--- @return Guild|nil
function GetGuildByLeaderGUID(guid) end

-----------------------------------------------------------------------
-- MAP / WORLD UTILITIES
-----------------------------------------------------------------------

--- Returns a Map object by ID.
--- @param mapId number Map ID
--- @param instanceId? number Optional instance ID
--- @return Map|nil
function GetMapById(mapId, instanceId) end

--- Returns the area name for a given area ID.
--- @param areaId number Area ID
--- @return string
function GetAreaName(areaId) end

--- Returns a Quest object by entry ID.
--- @param questId number Quest entry ID
--- @return Quest|nil
function GetQuest(questId) end

--- Returns spell info for a given spell ID.
--- @param spellId number Spell ID
--- @return SpellInfo|nil
function GetSpellInfo(spellId) end

-----------------------------------------------------------------------
-- ITEM UTILITIES
-----------------------------------------------------------------------

--- Returns an ItemTemplate by entry.
--- @param entry number Item entry ID
--- @return ItemTemplate|nil
function GetItemTemplate(entry) end

--- Returns an item link string.
--- @param entry number Item entry ID
--- @return string
function GetItemLink(entry) end

--- Adds an item to a vendor.
--- @param entry number Creature entry ID
--- @param itemId number Item entry ID
--- @param maxcount number Max count (-1 = infinite)
--- @param incrtime number Restock timer in seconds
--- @param extendedcost number Extended cost ID
function AddVendorItem(entry, itemId, maxcount, incrtime, extendedcost) end

--- Removes an item from a vendor.
--- @param entry number Creature entry ID
--- @param itemId number Item entry ID
function VendorRemoveItem(entry, itemId) end

--- Removes all items from a vendor.
--- @param entry number Creature entry ID
function VendorRemoveAllItems(entry) end

-----------------------------------------------------------------------
-- MESSAGING
-----------------------------------------------------------------------

--- Sends a world message to all online players.
--- @param message string Message text
function SendWorldMessage(message) end

--- Sends an in-game mail.
--- @param subject string Mail subject
--- @param body string Mail body
--- @param receiverGUID number Receiver GUID
--- @param senderGUID? number Sender GUID (optional)
--- @param stationery? number Stationery type
--- @param delay? number Delivery delay in milliseconds
--- @param money? number Attached money
--- @param cod? number Cash on delivery amount
--- @param itemEntry? number Attached item entry
--- @param itemAmount? number Attached item amount
function SendMail(subject, body, receiverGUID, senderGUID, stationery, delay, money, cod, itemEntry, itemAmount) end

--- Runs a GM command as if typed in the console.
--- @param command string GM command
function RunCommand(command) end

-----------------------------------------------------------------------
-- DATABASE
-----------------------------------------------------------------------

--- Executes a query on the World database.
--- @param sql string SQL query
--- @return ElunaQuery|nil
function WorldDBQuery(sql) end

--- Executes a non-select query on the World database.
--- @param sql string SQL statement
function WorldDBExecute(sql) end

--- Executes a query on the Character database.
--- @param sql string SQL query
--- @return ElunaQuery|nil
function CharDBQuery(sql) end

--- Executes a non-select query on the Character database.
--- @param sql string SQL statement
function CharDBExecute(sql) end

--- Executes a query on the Auth database.
--- @param sql string SQL query
--- @return ElunaQuery|nil
function AuthDBQuery(sql) end

--- Executes a non-select query on the Auth database.
--- @param sql string SQL statement
function AuthDBExecute(sql) end

-----------------------------------------------------------------------
-- SERVER INFO
-----------------------------------------------------------------------

--- Returns the core name (e.g. "AzerothCore").
--- @return string
function GetCoreName() end

--- Returns the core version string.
--- @return string
function GetCoreVersion() end

--- Returns the expansion (0=Vanilla, 1=TBC, 2=WotLK).
--- @return number
function GetCoreExpansion() end

--- Returns the Lua engine name.
--- @return string
function GetLuaEngine() end

--- Returns the realm ID.
--- @return number
function GetRealmID() end

--- Returns current UNIX timestamp.
--- @return number
function GetCurrTime() end

--- Returns current in-game time in seconds since midnight.
--- @return number
function GetGameTime() end

-----------------------------------------------------------------------
-- BITWISE OPERATIONS
-----------------------------------------------------------------------

--- @param a number
--- @param b number
--- @return number
function bit_and(a, b) end

--- @param a number
--- @param b number
--- @return number
function bit_or(a, b) end

--- @param a number
--- @param b number
--- @return number
function bit_xor(a, b) end

--- @param a number
--- @return number
function bit_not(a) end

--- @param a number
--- @param b number
--- @return number
function bit_lshift(a, b) end

--- @param a number
--- @param b number
--- @return number
function bit_rshift(a, b) end

-----------------------------------------------------------------------
-- CREATURE EVENTS (constants for RegisterCreatureEvent)
-----------------------------------------------------------------------

CREATURE_EVENT_ON_ENTER_COMBAT     = 1
CREATURE_EVENT_ON_LEAVE_COMBAT     = 2
CREATURE_EVENT_ON_TARGET_DIED      = 3
CREATURE_EVENT_ON_DIED             = 4
CREATURE_EVENT_ON_SPAWN            = 5
CREATURE_EVENT_ON_REACH_WP         = 6
CREATURE_EVENT_ON_AIUPDATE         = 7
CREATURE_EVENT_ON_RECEIVE_EMOTE    = 8
CREATURE_EVENT_ON_DAMAGE_TAKEN     = 9
CREATURE_EVENT_ON_PRE_COMBAT       = 10
CREATURE_EVENT_ON_OWNER_ATTACKED   = 12
CREATURE_EVENT_ON_OWNER_ATTACKED_AT = 13
CREATURE_EVENT_ON_HIT_BY_SPELL     = 14
CREATURE_EVENT_ON_SPELL_HIT_TARGET = 15

-----------------------------------------------------------------------
-- GOSSIP EVENTS (constants for RegisterCreatureGossipEvent)
-----------------------------------------------------------------------

GOSSIP_EVENT_ON_HELLO  = 1
GOSSIP_EVENT_ON_SELECT = 2

-----------------------------------------------------------------------
-- PLAYER EVENTS (constants for RegisterPlayerEvent)
-----------------------------------------------------------------------

PLAYER_EVENT_ON_CHARACTER_CREATE    = 1
PLAYER_EVENT_ON_CHARACTER_DELETE    = 2
PLAYER_EVENT_ON_LOGIN               = 3
PLAYER_EVENT_ON_LOGOUT              = 4
PLAYER_EVENT_ON_SPELL_CAST          = 5
PLAYER_EVENT_ON_KILL_PLAYER         = 6
PLAYER_EVENT_ON_KILL_CREATURE       = 7
PLAYER_EVENT_ON_KILLED_BY_CREATURE  = 8
PLAYER_EVENT_ON_DUEL_REQUEST        = 9
PLAYER_EVENT_ON_DUEL_START          = 10
PLAYER_EVENT_ON_DUEL_END            = 11
PLAYER_EVENT_ON_GIVE_XP             = 12
PLAYER_EVENT_ON_LEVEL_CHANGE        = 13
PLAYER_EVENT_ON_MONEY_CHANGE        = 14
PLAYER_EVENT_ON_REPUTATION_CHANGE   = 15
PLAYER_EVENT_ON_TALENTS_CHANGE      = 16
PLAYER_EVENT_ON_TALENTS_RESET       = 17
PLAYER_EVENT_ON_CHAT                = 18
PLAYER_EVENT_ON_WHISPER             = 19
PLAYER_EVENT_ON_GROUP_CHAT          = 20
PLAYER_EVENT_ON_GUILD_CHAT          = 21
PLAYER_EVENT_ON_CHANNEL_CHAT        = 22
PLAYER_EVENT_ON_EMOTE               = 23
PLAYER_EVENT_ON_TEXT_EMOTE          = 24
PLAYER_EVENT_ON_SAVE                = 25
PLAYER_EVENT_ON_BIND_TO_INSTANCE    = 26
PLAYER_EVENT_ON_UPDATE_ZONE         = 27
PLAYER_EVENT_ON_MAP_CHANGE          = 28
PLAYER_EVENT_ON_EQUIP               = 29
PLAYER_EVENT_ON_FIRST_LOGIN         = 30
PLAYER_EVENT_ON_QUEST_ABANDON       = 34
PLAYER_EVENT_ON_LEARN_TALENTS       = 36
PLAYER_EVENT_ON_ENTER_COMBAT        = 53

-----------------------------------------------------------------------
-- SERVER EVENTS (constants for RegisterServerEvent)
-----------------------------------------------------------------------

SERVER_EVENT_ON_NETWORK_START       = 1
SERVER_EVENT_ON_NETWORK_STOP        = 2
SERVER_EVENT_ON_MOTD_CHANGE         = 3
SERVER_EVENT_ON_SHUTDOWN_INIT       = 4
SERVER_EVENT_ON_SHUTDOWN_CANCEL     = 5
SERVER_EVENT_ON_UPDATE              = 6
SERVER_EVENT_ON_STARTUP             = 7
SERVER_EVENT_ON_BEFORE_WORLD_UPDATE = 8
