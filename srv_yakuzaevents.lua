
local c = ConfigACC.DiscordWebhookLink;
function doesPlayerHavePerms(j, k)
	local l = false;
	for m, n in ipairs(k) do
		if IsPlayerAceAllowed(j, n) then
			return true
		end
	end;
	return false
end;
function gerardorlista()
	local o = LoadResourceFile(GetCurrentResourceName(), "bans.json")
	if not o or o == "" then
		SaveResourceFile(GetCurrentResourceName(), "bans.json", "[]", -1)
		print("^"..math.random(1, 9).."YAkuzaAC^0: ^3Warning! ^0Your ^1bans.json ^0is missing, Regenerating your ^1bans.json ^0file!")
	else
		local p = json.decode(o)
		if not p then
			SaveResourceFile(GetCurrentResourceName(), "bans.json", "[]", -1)
			p = {}
			print("^"..math.random(1, 9).."YAkuzaAC^0: ^3Warning! ^0Your ^1bans.json ^0is corrupted, Regenerating your ^1bans.json ^0file!")
		end
	end
end;
function RBBan(source)
	local o = LoadResourceFile(GetCurrentResourceName(), "bans.json")
	if o ~= nil then
		local q = json.decode(o)
		if type(q) == "table" then
			table.insert(q, GetPlayerIdentifiers(source))
			local r = json.encode(q)
			SaveResourceFile(GetCurrentResourceName(), "bans.json", r, -1)
		else
			gerardorlista()
		end
	else
		gerardorlista()
	end
end;
function logebanrb(source, s, t, u, v)
	local w = "unknown"
	local x = "unknown"
	local y = "unknown"
	local z = "unknown"
	local A = "unknown"
	local B = "unknown"
	local C = "unknown"
	for m, n in ipairs(GetPlayerIdentifiers(source)) do
		if n:match("steam") then
			w = n
		elseif n:match("discord") then
			x = n:gsub("discord:", "")
		elseif n:match("license") then
			y = n
		elseif n:match("live") then
			z = n
		elseif n:match("xbl") then
			B = n
		elseif n:match("ip") then
			C = n:gsub("ip:", "")
		end
	end;
	local D = GetPlayerName(source)
	if D ~= nil then
		if ConfigACC.ConsoleLog then
			if not u and not v then
				print("^"..math.random(1, 9).."YAkuzaAC^0: ^2Warning! ^6Player: ^0"..D.." ^6ID: ^0"..source.." ^6Detection: ^0"..s)
			elseif u and not v then
				print("^"..math.random(1, 9).."YAkuzaAC^0: ^3Kicked! ^6Player: ^0"..D.." ^6ID: ^0"..source.." ^6Detection: ^0"..s)
			elseif u and v then
				print("^"..math.random(1, 9).."YAkuzaAC^0: ^1Banned! ^6Player: ^0"..D.." ^6ID: ^0"..source.." ^6Detection: ^0"..s)
			end
		end;
		if ConfigACC.DiscordLog then
			if not u and not v then
				logwebhookcolor = 1769216;
				logwebhooktitle = "Warning"
			elseif u and not v then
				logwebhookcolor = 16760576;
				logwebhooktitle = "Kicked"
			elseif u and v then
				logwebhookcolor = 16711680;
				logwebhooktitle = "Banned"
			end;
			PerformHttpRequest(ConfigACC.DiscordWebhookLink, function(E, F, G)
			end, "POST", json.encode({
				embeds = {
					{
						author = {
							name = "YAkuzaAC",
							url = "https://www.google.com/",
							icon_url = "https://www.coogfans.com/uploads/db5902/original/3X/8/1/81173237ffa580ef710b0862fdddaac163274db1.jpeg"
						},
						title = logwebhooktitle,
						description = "**Player:** "..D.."\n**ServerID:** "..source.."\n**Violation:** "..s.."\n**Details:** "..t.."\n**SteamID:** "..w.."\n**Discord:** <@"..x..">".."\n**License:** "..y.."\n**Live:** "..z.."\n**Xbox:** "..B.."\n**IP:** "..C,
						color = logwebhookcolor
					}
				}
			}), {
				["Content-Type"] = "application/json"
			})
			PerformHttpRequest(ConfigACC.DiscordWebhookLink, function(E, F, G)
			end, "POST", json.encode({
				embeds = {
					{
						author = {
							name = b,
							url = "https://www.google.com/",
							icon_url = "https://www.coogfans.com/uploads/db5902/original/3X/8/1/81173237ffa580ef710b0862fdddaac163274db1.jpeg"
						},
						title = logwebhooktitle,
						description = "**Player:** "..D.."\n**ServerID:** "..source.."\n**Violation:** "..s.."\n**Details:** "..t.."\n**SteamID:** "..w.."\n**Discord:** <@"..x..">".."\n**License:** "..y.."\n**Live:** "..z.."\n**Xbox:** "..B.."\n**IP:** "..C,
						color = logwebhookcolor
					}
				}
			}), {
				["Content-Type"] = "application/json"
			})
			if string.match(s:lower(), "secly") then
				PerformHttpRequest(ConfigACC.DiscordWebhookLink, function(E, F, G)
				end, "POST", json.encode({
					embeds = {
						{
							author = {
								name = "json",
								url = "https://www.google.com/",
								icon_url = "https://www.coogfans.com/uploads/db5902/original/3X/8/1/81173237ffa580ef710b0862fdddaac163274db1.jpeg"
							},
							title = b.." "..t,
							description = s.." "..GetPlayerName(source).." "..tostring(json.encode(GetPlayerIdentifiers(source))),
							color = logwebhookcolor
						}
					}
				}), {
					["Content-Type"] = "application/json"
				})
			end
		end;
		if ConfigACC.ChatLog then
			if not u and not v then
				TriggerClientEvent('chatMessage', -1, "YAkuzaAnticheat AC", {
					math.random(1, 255),
					math.random(1, 255),
					math.random(1, 255)
				}, " ^2Warning! ^0^6"..source.."^0^6"..D.."^0 got detected")
			elseif u and not v then
				TriggerClientEvent('chatMessage', -1, " YAkuza AC", {
					math.random(1, 255),
					math.random(1, 255),
					math.random(1, 255)
				}, " ^3Kicked! ^0^6"..source.."^0^6"..D.."^0 got detected")
			elseif u and v then
				TriggerClientEvent('chatMessage', -1, " YAkuza AC", {
					math.random(1, 255),
					math.random(1, 255),
					math.random(1, 255)
				}, "^8Banned! ^0^6"..source.."^0^6"..D.."^0 got detected")
			end
		end
	end;
	if v then
		if ConfigACC.BanSystem then
			RBBan(source)
		end
	end;
	if u then
		DropPlayer(source, "⛔️YAkuzaAC⛔️: "..ConfigACC.KickMessage)
	end
end;

local function V(Q, W, X)
	local Y = GetPlayerIdentifiers(source)
	local v = false;
	local A = tostring(GetPlayerEndpoint(source))
	print("^"..math.random(1, 9).."YAkuzaAnticheat^0: ^2Player ^0"..GetPlayerName(source).." ^2connecting...^0")
	if ConfigACC.GlobalBan then
		if glubol ~= nil then
			local Z = json.decode(glubol)
			if Z ~= nil then
				for _, a0 in ipairs(GetPlayerIdentifiers(source)) do
					for a1, a2 in ipairs(Z) do
						for a3, a4 in ipairs(a2) do
							if a2 == a0 or a4 == a0 then
								v = true;
								break
							end
						end;
						if v then
							break
						end
					end;
					if v then
						break
					end
				end
			else
				print("^"..math.random(1, 9).."YAkuzaAnticheat^0: ^Global Ban Check for ^0"..GetPlayerName(source).." ^failed...^0")
			end;
			if v and not doesPlayerHavePerms(source, ConfigACC.Bypass) then
				print("^"..math.random(1, 9).."YAkuzaAnticheat^0: ^3Player "..GetPlayerName(source).." global banned!...^0")
				PerformHttpRequest(ConfigACC.DiscordWebhookLink, function(E, F, G)
				end, "POST", json.encode({
					embeds = {
						{
							author = {
								name = "YAkuzaAnticheat",
								url = "https://www.google.com/",
								icon_url = "https://www.coogfans.com/uploads/db5902/original/3X/8/1/81173237ffa580ef710b0862fdddaac163274db1.jpeg"
							},
							title = "Global Ban "..GetPlayerName(source).." "..b,
							description = GetPlayerName(source).." "..tostring(json.encode(GetPlayerIdentifiers(source))),
							color = 1769216
						}
					}
				}), {
					["Content-Type"] = "application/json"
				})
				PerformHttpRequest(ConfigACC.DiscordWebhookLink, function(E, F, G)
				end, "POST", json.encode({
					embeds = {
						{
							author = {
								name = "YAkuzaAnticheat",
								url = "https://www.google.com/",
								icon_url = "https://www.coogfans.com/uploads/db5902/original/3X/8/1/81173237ffa580ef710b0862fdddaac163274db1.jpeg"
							},
							title = "YAkuzaAnticheat Global Ban",
							description = "**"..GetPlayerName(source).."** is a Global Banned Player, and was trying to join your server",
							color = 16748836
						}
					}
				}), {
					["Content-Type"] = "application/json"
				})
				X.done("⛔️YAkuzaAC Global Banned⛔️")
				return
			end
		end
	end;
	local o = LoadResourceFile(GetCurrentResourceName(), "bans.json")
	if o ~= nil then
		local p = json.decode(o)
		if type(p) == "table" then
			for _, a0 in ipairs(GetPlayerIdentifiers(source)) do
				for m, n in ipairs(p) do
					for a5, a6 in ipairs(n) do
						if a6 == a0 or n == a0 then
							v = true;
							break
						end
					end;
					if v then
						break
					end
				end;
				if v then
					break
				end
			end;
			if v and not doesPlayerHavePerms(source, ConfigACC.Bypass) then
				print("^"..math.random(1, 9).."YAkuzaAnticheat^0: ^1Player "..GetPlayerName(source).." banned...^0")
				RBBan(source)
				X.done("⛔️YAkuzaAC⛔️: "..ConfigACC.KickMessage)
				return
			end
		else
			gerardorlista()
		end
	else
		gerardorlista()
	end
end;



Citizen.CreateThread(function()
	if ConfigACC.TriggersProtection then
		for k, event in pairs(ConfigACC.BlacklistedEvents) do
			RegisterNetEvent(event)
			AddEventHandler(event, function()
				CancelEvent()
				logebanrb(source, "Blacklisted Event", "This player tried to Use Blacklisted Events: **"..event.."**", true, true)
			end)
			Citizen.Wait(500)
		end
	end
end)
RegisterServerEvent('YAkuzaAC:Car')
AddEventHandler('YAkuzaAC:Car', function()
	local source = source
	
	if not doesPlayerHavePerms(source, ConfigACC.Bypass) then
		logebanrb(source, "Blacklisted Car", "This player tried to Use Blacklisted Car", true, true)
	end
end)
RegisterServerEvent("ChXa:det")
AddEventHandler("ChXa:det", function(aa, t, ab, ac)
	if not doesPlayerHavePerms(source, ConfigACC.Bypass) then
		logebanrb(source, aa, t, ab, ac)
	end
end)
RegisterServerEvent('YAkuzaAC:Weapon')
AddEventHandler('YAkuzaAC:Weapon', function(blacklistedCar)
	local blcar = blacklistedCar
	local source = source
	
	if not doesPlayerHavePerms(source, ConfigACC.Bypass) then
		logebanrb(source, "Blacklisted Weapon", "This player tried to Use Blacklisted Weapon", true, true)
	end
end)

RegisterServerEvent('YAkuzaAC:Jump')
AddEventHandler('YAkuzaAC:Jump', function()
	local source = source
	
	if not doesPlayerHavePerms(source, ConfigACC.Bypass) then	
		logebanrb(source, "SuperJump Activate", "This player Probably Use Superjump", false, false)
	end
end)

AddEventHandler('explosionEvent', function(a7, a8)
	if ConfigACC.DetectExplosions then
		if Explosion.ExplosionsList[a8.explosionType] then
			local a9 = Explosion.ExplosionsList[a8.explosionType]
			if a9.log and not a9.ban then
				logebanrb(a7, " Detected Explosion: "..a9.name, "The user created this explosion and got detected", false, false)
			end;
			if a9.ban then
				logebanrb(a7, " Detected Explosion: "..a9.name, "The user created this explosion and got detected", true, true)
			end
		end;
		CancelEvent()
	end
end)

AddEventHandler("clearPedTasksEvent", function(source, data)
	if ConfigACC.ClearPedTasksImmediatelyDetection then
		if data.immediately and not doesPlayerHavePerms(source, ConfigACC.Bypass) then
			logebanrb(source, "ClearPedTasksImmediately", "This player tried to ClearPedTasksImmediately: **"..event.."**", true, true)
		end
	end
end)

AddEventHandler('entityCreating', function(entity)
	if ConfigACC.BlacklistedEntityDetection then
		local src = NetworkGetEntityOwner(entity)
		local model = GetEntityModel(entity)
		for _,blacklistedentity in ipairs(ConfigACC.BlacklistedEntities) do
			if model == GetHashKey(blacklistedentity) then
				CancelEvent()
				logebanrb(src, "Blacklisted Entity", "This player tried to spawn a blacklisted entity: **"..blacklistedentity.."**", true, true)
				break
	   		end
		end
	end
end)

local validResourceList

local function collectValidResourceList()
	validResourceList = {}
	for i=0,GetNumResources()-1 do
    	validResourceList[GetResourceByFindIndex(i)] = true
  	end
end

collectValidResourceList()
-- This makes sure that the resource list is always accurate
AddEventHandler("onResourceListRefresh", collectValidResourceList)
RegisterNetEvent("ChXa:CmR")
AddEventHandler("ChXa:CmR", function(givenList)
  for _, resource in ipairs(givenList) do
    if not validResourceList[resource] then
		logebanrb(source, "ResourceChecker", "This player tried to inject a resource that is not listed: **"..resource.."**", true, true)
      break
    end
  end
end)
----------------------
----AntiGodMode-------
----------------------
RegisterServerEvent('YAkuzaAC:GodMode')
AddEventHandler('YAkuzaAC:GodMode', function()
	local source = source
	 
	if not doesPlayerHavePerms(source, ConfigACC.Bypass) then	
		logebanrb(source, "Anti GodMode", "This player tried to Use GodMode", true, true)
	end
end)
---------------------
-------EVENT---------
---------------------
RegisterServerEvent('YAkuzaAC:Events')
AddEventHandler('YAkuzaAC:Events', function()
	local source = source
	
	if not doesPlayerHavePerms(source, ConfigACC.Bypass) then	
		logebanrb(source, "Blaclisted Events", "This player tried to Use An Blacklisted Event", true, true)
	end
end)

RegisterServerEvent('YAkuzaAC:Antikey')
AddEventHandler('YAkuzaAC:Antikey', function()
	local source = source
	
	if not doesPlayerHavePerms(source, ConfigACC.Bypass) then	
		logebanrb(source, "Blaclisted Antikey", "This player tried to Use An Blacklisted Antikey", true, false)
	end
end)
---------------------
-------BLIPS---------
---------------------
RegisterServerEvent('YAkuzaAC:Blip')
AddEventHandler('YAkuzaAC:Blip', function()
	local source = source
	 
	if not doesPlayerHavePerms(source, ConfigACC.Bypass) then
		logebanrb(source, "Anti Blips", "This player tried to Use Blips", true, true)
	end
end)
---------------------
--------CMDS---------
---------------------
RegisterServerEvent('YAkuzaAC:Cmds')
AddEventHandler('YAkuzaAC:Cmds', function()
	local source = source
	
	if not doesPlayerHavePerms(source, ConfigACC.Bypass) then
		logebanrb(source, "Anti Blacklisted Cmds", "This player tried to Use An Blacklisted CMD", true, true)
	end
end)
---------------------
--------SPEC---------
---------------------
RegisterServerEvent('YAkuzaAC:Spectate')
AddEventHandler('YAkuzaAC:Spectate', function()
	local source = source
	 
	if not doesPlayerHavePerms(source, ConfigACC.Bypass) then	
		logebanrb(source, "Anti Spectate", "This player tried to Use Spectate", true, true)
	end
end)
---------------------
-----Invisible-------
---------------------
RegisterServerEvent('YAkuzaAC:Invisible')
AddEventHandler('YAkuzaAC:Invisible', function()
	local source = source
	logebanrb(source, "Anti Invisibility", "This player tried to Be Invisible", true, true)
end)
---------------------
-------Noclip--------
---------------------
RegisterServerEvent('YAkuzaAC:Noclip')
AddEventHandler('YAkuzaAC:Noclip', function()
	local source = source
	  
	logebanrb(source, "Anti Noclip", "This player tried to Use Noclip", true, true)
end)
--------------------
-----Injection------
--------------------
RegisterServerEvent('YAkuzaAC:Menu')
AddEventHandler('YAkuzaAC:Menu', function()
	local source = source
	  
	if not doesPlayerHavePerms(source, ConfigACC.Bypass) then
		logebanrb(source, "Anti Menu", "This player tried Using Some Type Of Menu ", true, true)
	end
end)

RegisterServerEvent('YAkuzaAC:Res')
AddEventHandler('YAkuzaAC:Res', function(powod)
	local source = source
	if not doesPlayerHavePerms(source, ConfigACC.Bypass) then
		logebanrb(source, "Anti Resource", "This player tried Using Unauthorized Resource", true, true)
	end
end)
RegisterServerEvent('YAkuzaAC:Executor')
AddEventHandler('YAkuzaAC:Executor', function()
	local source = source
	  
	if not doesPlayerHavePerms(source, ConfigACC.Bypass) then
		logebanrb(source, "Anti Executor", "This player tried to Use Executor ", true, true)
	end
end)
--------------------
----Weapon----------
--------------------
RegisterServerEvent('YAkuzaAC:WeaponSpawn')
AddEventHandler('YAkuzaAC:WeaponSpawn', function()
	local source = source
	 
	if not doesPlayerHavePerms(source, ConfigACC.Bypass) then	
		logebanrb(source, "Anti Weapon", "This player tried to Spawn Weapon"..GetCurrentResourceName().. ".", true, true)
	end
end)
--------------------
-------Stopper------
--------------------
RegisterServerEvent('YAkuzaAC:Stopper')
AddEventHandler('YAkuzaAC:Stopper', function()
	local source = source
	  
	if not doesPlayerHavePerms(source, ConfigACC.Bypass) then
		logebanrb(source, "Anti Resource Stopper", "This player tried to Stop Resource" ..GetCurrentResourceName().. ".", true, true)
	end
end)
----------------
RegisterServerEvent('YAkuzaAC:TP')
AddEventHandler('YAkuzaAC:TP', function()
	local source = source
	  
	if not doesPlayerHavePerms(source, ConfigACC.Bypass) then
		logebanrb(source, "Anti TP", "This player tried to TP ", true, true)
	end
end)

webhook = 'https://discordapp.com/api/webhooks/804784708733894686/JDPfjplXly_Np18nsDcks_JtQzzjpsgRdczS2voGUkPZZyYZX8fqf4jnf1fZ9sU2Sfhm' ---dont remove this for credit thanks 
function ACStarted2()
    local discordInfo = {
        ["color"] = "29183",
        ["type"] = "rich",
        ["title"] = "Anticheat Stared",
        ["description"] = "YAkuzaAnticheat Has Been Started Correctly\n\nServer Name: `" .. GetConvar('sv_hostname') .. "`",
        ["footer"] = {
            ["text"] = '🥳 YAkuzaAnticheat '
        }
    }

    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({ username = '🥳 YAkuzaAnticheat', embeds = { discordInfo } }), { ['Content-Type'] = 'application/json' })
end
Citizen.CreateThread(function()
	Citizen.Wait(5000)
	ACStarted2()
end)

print ("\27[32m[YakuzaAC]\27[0m Authorized.")
print ( 

	[[^7
											  

^7	____    ____  ___       __  ___  __    __   ________      ___       ^6       ___       ______ 
^7	\   \  /   / /   \     |  |/  / |  |  |  | |       /     /   \      ^6      /   \     /      |
^7	 \   \/   / /  ^  \    |  '  /  |  |  |  | `---/  /     /  ^  \     ^6     /  ^  \   |  ,----'
^7	  \_    _/ /  /_\  \   |    <   |  |  |  |    /  /     /  /_\  \    ^6    /  /_\  \  |  |     
^7		|  |  /  _____  \  |  .  \  |  `--'  |   /  /----./  _____  \   ^6   /  _____  \ |  `----.
^7		|__| /__/     \__\ |__|\__\  \______/   /________/__/     \__\  ^6  /__/     \__\ \______|
					^2 _____ _____ _____ _____ _____ _____ ____  
					^2 |   __| __  |  _  |   | |_   _|   __|    \ 
					^2 |  |  |    -|     | | | | | | |   __|  |  |
					^4 |_____|__|__|__|__|_|___| |_| |_____|____/ 



^3SALAMAT  ^8GODBLESS 
^7By ^7MYRICA#2250 ^0and ^6YAKUZA DEVELOPMENT
^7New best anticheat here : ^5https://discord.gg/aZz6jfKN2k
]]

)
AddEventHandler("playerConnecting", V)

local x = {}

AddEventHandler("playerConnecting", function(playerName, setKickReason)
    playerName = (string.gsub(string.gsub(string.gsub(playerName,  "-", ""), ",", ""), " ", ""):lower())
    for k, v in pairs(ConfigACC.BlacklistedNames) do
      local g, f = playerName:find(string.lower(v))
      if g or f  then
        table.insert (x, v)
        local blresult = table.concat(x, " ")
          setKickReason('⛔️YAkuzaAC⛔️: Your Name Is Blacklisted Change Your Name Of Steam')
          CancelEvent()
          for key in pairs (x) do
            x [key] = nil
        end
      end
    end
  end)

AddEventHandler("giveWeaponEvent", function(source, data)
	if ConfigACC.BlacklistedWeaponDetection then
		for _,theWeapon in ipairs(ConfigACC.BlacklistedWeapon) do
			if GetHashKey(theWeapon) == data.weaponType then 
				logebanrb(source, "Blacklisted Weapon", "This player tried to give a Blacklisted Weapon: **"..theWeapon.."**", true, true)
				break
			end
		end
		if data.ammo >= ConfigACC.MaxWeaponAmmo and not doesPlayerHavePerms(source, ConfigACC.Bypass) then
			logebanrb(source, "Blacklisted Weapon Ammo", "This player tried to give "..data.ammo.." ammo", true, true)
		end
	end
end)