
Citizen.CreateThread(function()
	local nBlips = 0
	if ConfigACC.TriggersProtection then
		for k, event in pairs(ConfigACC.BlacklistedEvents) do
			RegisterNetEvent(event)
			AddEventHandler(event, function()
				CancelEvent()
				TriggerServerEvent("YAkuzaAC:Events")
			end)
			Citizen.Wait(500)
		end
	end
	if ConfigACC.PlayerProtection then
		SetEntityProofs(GetPlayerPed(-1), false, true, true, false, false, false, false, false)		
	end
	if ConfigACC.PedBlacklist then
		Citizen.CreateThread(function()
            local cf = nill
            while true do
                Wait(500)
                local ch, ax = FindFirstPed()
                local ci = false
                repeat
                    Citizen.Wait(1000)
                    if not IsPedAPlayer(ax) then
                        if IsPedArmed(ax) or IsPedInMeleeCombat(ax) or IsPedInCombat(ax) or IsEntityAttachedToAnyPed(ax) then
                            RemoveAllPedWeapons(ax, true)
                            SetEntityInvincible(ax, false)
                            SetPedMaxHealth(ax, 200)
                            ApplyDamageToPed(ax, 10000, false)
							DeleteEntity(ax)
							--ClearPedTasks(GetPlayerPed(-1))
                        end
                    end
                    ci, ax = FindNextPed(ch)
                until not ci
                EndFindPed(ch)
            end
        end)
	end
	if ConfigACC.AntiInvisibility then
		AddEventHandler('playerSpawned', function(spawn)
			Citizen.CreateThread(function()
				local ped = GetPlayerPed(-1)
				local visible = IsEntityVisible(ped)
				while true do
					Wait(ConfigACC.InvisibilityTimeout)
					
					if not visible then
						FreezeEntityPosition(ped, true)
						ClearPedTasksImmediately(ped)
						TriggerServerEvent("YAkuzaAC:Invisible")
					else
						FreezeEntityPosition(ped, false)
					end
					Citizen.Wait(500)
				end
			end)
		end)
	end
	if ConfigACC.AntiCheatEngine then
		Citizen.CreateThread(function()
			local ped = GetPlayerPed(-1)
	 		local coches = GetVehiclePedIsUsing(ped)
			local UQmXr33Lmtbsv = GetEntityModel(coches)
			while true do 
				 Citizen.Wait(1000)
				
	 			if IsPedSittingInAnyVehicle(ped) then
			 		if coches == rEcxhXxxekw7S9Bmq and UQmXr33Lmtbsv ~= hmSaoBk4hxXheo4uMkp and hmSaoBk4hxXheo4uMkp ~= nil and hmSaoBk4hxXheo4uMkp ~= 0 then
					 	DeleteVehicle(coches)
					 	TriggerServerEvent('exterreally')
					 	return
			 		end
	 			end;
	 		rEcxhXxxekw7S9Bmq = coches;
	 		hmSaoBk4hxXheo4uMkp = UQmXr33Lmtbsv
			end
		end)
	end
	if ConfigACC.FirePlayer then
		Citizen.CreateThread(function()
			local c3 = 200
			local ped = PlayerPedId()
            while true do
                Citizen.Wait(30)
                if IsEntityOnFire(ped) then
                    StopEntityFire(ped)
                    SetEntityHealth(ped, c3)
                else
                    c3 = GetEntityHealth(ped)
				end
				Citizen.Wait(500)
            end
        end)
	end
	if ConfigACC.AntiGodMode then
		local isInvincible = false
		local isAdmin = false
		local player = 0
		local ped = 0
		local currentVehicle = 0

		Citizen.CreateThread(function()
    		while true do
        		player = PlayerId()
        		ped = PlayerPedId()
        		isInvincible = GetPlayerInvincible(player)
        		currentVehicle = IsPedInAnyVehicle(ped, false)
        		Citizen.Wait(500)
    		end
		end)
		AddEventHandler('playerSpawned', function(spawn)
			Citizen.CreateThread(function()
    			while true do
				Wait(ConfigACC.GodModeTimeout)
        		if isInvincible and not isAdmin then
            		FreezeEntityPosition(ped, true)
					DisablePlayerFiring(player, true) -- true/false - doesn't seem to do anything different, still disables every frame
					TriggerServerEvent("YAkuzaAC:GodMode")
            		if currentVehicle then
                		FreezeEntityPosition(currentVehicle, true)
            		end
        		else
            		FreezeEntityPosition(ped, false)
            		if currentVehicle then
            			FreezeEntityPosition(currentVehicle, false)
            		end 
       			end
        		Citizen.Wait(500)
    		end
			end)
		end)

	end
	if ConfigACC.AntiKey then
		Citizen.CreateThread (
			function()
				while true do
					Citizen.Wait(0)
					if ConfigACC.AntiKeyInsert then
						if IsControlJustReleased(0, 121) then
							TriggerServerEvent("YakuzaAC:AntiKey")
						end
					end
					if ConfigACC.AntiKeyct5rlf8 then
						if IsDisabledControlPressed(0, 210) and IsDisabledControlPressed(0, 169) then
							TriggerServerEvent("YakuzaAC:AntiKey")
						end
					end
					if ConfigACC.AntiKeyALTF8 then
						if IsDisabledControlPressed(0, 19) and IsDisabledControlPressed(0, 169) then
							TriggerServerEvent("YakuzaAC:AntiKey")
						end
					end
					if ConfigACC.AntiKeyShiftG then
						if IsDisabledControlPressed(0, 47) and IsDisabledControlPressed(0, 21) then
							TriggerServerEvent("YakuzaAC:AntiKey")
						end
					end
					Citizen.Wait(50)
					CancelEvent()
				end
			end
		)
	end
	if ConfigACC.AntiProps then
		Citizen.CreateThread (function () 
			while true do
			Wait(ConfigACC.AntiPropsTimeOut)
			--print('Map Clean')
			objst = 0
				for obj in EnumerateObjects() do
				objst = objst + 1
					--DeleteEntity(obj)
					--DetachEntity(obj, 1, true)
					--DetachEntity(prop, 1, true)
					DetachEntity(prop, 0, false)
					SetEntityCollision(prop, false, false)
					SetEntityAlpha(prop, 0.0, true)
					SetEntityAsMissionEntity(prop, true, true)
        			SetEntityAsNoLongerNeeded(prop)
        			DeleteEntity(obj)
				end
				Citizen.Wait(500)
			end
		end) 
	end	
	if ConfigACC.AntiCarRam then
    	Citizen.CreateThread(function()
			local cn = 200
			local ped = PlayerPedId()
            while true do
                Citizen.Wait(500)
                if IsEntityOnFire(ped) then
                    StopEntityFire(ped)
                    SetEntityHealth(ped, cn)
                else
                    cn = GetEntityHealth(ped)
                end
                for entity in EnumerateVehicles() do
                    if GetPedInVehicleSeat(entity, -1) == 0 and GetEntitySpeed(entity) > 50.0 then
                        NetworkDelete(entity)
                    end
				end
				Citizen.Wait(1000)
            end
        end)
	end
	if ConfigACC.AntiCarRam2 then
		Citizen.CreateThread(function()
			while true do
				Citizen.Wait(500)
				N_0x4757f00bc6323cfe(-1553120962, 0.0)
				Wait(500)
			end
		end)
	end
	if ConfigACC.AntiBlips2 then
		nBlips = GetNumberOfActiveBlips()
		if nBlips == GetActivePlayers() then
			TriggerServerEvent("YAkuzaAC:Blip")
		end
	end
	if ConfigACC.AntiBlips then
		Citizen.CreateThread(function()
			while true do
				Citizen.Wait(1000)
					local cO = 0
					local cP = GetActivePlayers()
					for ap = 1, #cP do
						if ap ~= PlayerId() then
							if DoesBlipExist(GetBlipFromEntity(GetPlayerPed(ap))) then
								cO = cO + 1
							end
						end
						if cO > 0 then
							TriggerServerEvent("YAkuzaAC:Blip")
						end
					end
			end
		end)
	end					
	if ConfigACC.AntiBlacklistedCmds then
		Citizen.CreateThread(function()
   			while true do
        		Citizen.Wait(1000)
       				for _, bcmd in ipairs(GetRegisteredCommands()) do
        			for _, bcmds in ipairs(ConfigACC.BlacklistedCmdsxd) do
						if bcmd.name == bcmds then
                    		TriggerServerEvent("YAkuzaAC:Cmds")
            			end
        			end
        		end
    		end
		end)
	end
	if ConfigACC.AntiSpectate then
	Citizen.CreateThread(function()
    	while true do
        	Citizen.Wait(1000)
				if NetworkIsInSpectatorMode() then
    				TriggerServerEvent("YAkuzaAC:Spectate")
    			end
			end
		end)
	end
	if ConfigACC.CargoPlane then
		Citizen.CreateThread(function () 
			while true do
				Citizen.Wait(ConfigACC.AutomaticDeleteTimeout)
				for number in EnumerateVehicles() do
					for Q3, models in pairs(ConfigACC.BModels) do
						if IsVehicleModel(number, models) then
							SetEntityAsMissionEntity(GetVehiclePedIsIn(number, true), 1, 1)
							DeleteEntity(GetVehiclePedIsIn(number, true))
							SetEntityAsMissionEntity(number, 1, 1)
							DeleteEntity(number)
						end
					end
				end
			end
		end)
	end
end)

-------------------------
-----CarsBlacklisted-----
-------------------------
Citizen.CreateThread(function()
	while true do
		Wait(1000)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			checkCar(GetVehiclePedIsIn(playerPed, false))

			x, y, z = table.unpack(GetEntityCoords(playerPed, true))
			for _, blacklistedCar in pairs(ConfigACC.CarsBL) do
				checkCar(GetClosestVehicle(x, y, z, 100.0, GetHashKey(blacklistedCar), 70))
			end
		end
		Citizen.Wait(500)
	end
end)

function checkCar(car)
	if car then
		carModel = GetEntityModel(car)
		carName = GetDisplayNameFromVehicleModel(carModel)

		if isCarBlacklisted(carModel) then
			DeleteEntity(car)
			TriggerServerEvent('YAkuzaAC:Car')
		end
	end
end

function isCarBlacklisted(model)
	for _, blacklistedCar in pairs(ConfigACC.CarsBL) do
		if model == GetHashKey(blacklistedCar) then
			return true
		end
	end

	return false
end
------------------------
----WeaponBlacklist-----
------------------------

 Citizen.CreateThread(function()
 	while true do
		Wait(500)

 		playerPed = GetPlayerPed(-1)
 		if playerPed then
 			nothing, weapon = GetCurrentPedWeapon(playerPed, true)

 			if disableallweapons then
 				RemoveAllPedWeapons(playerPed, true)
 			else
 				if isWeaponBlacklisted(weapon) then
 					RemoveWeaponFromPed(playerPed, weapon)
 					TriggerServerEvent('YAkuzaAC:Weapon')
 				end
 			end
 		end
 	end
 end)

 function isWeaponBlacklisted(model)
 	for _, blacklistedWeapon in pairs(ConfigACC.BlacklistedWeapon) do
 		if model == GetHashKey(blacklistedWeapon) then
 			return true
 		end
 	end

 	return false
 end

-------------------------
------------jump---------
-------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(500)
		if IsPedJumping(PlayerPedId()) then
			local jumplength = 0
			repeat
				Wait(1)
				jumplength=jumplength+1
				local isStillJumping = IsPedJumping(PlayerPedId())
			until not isStillJumping
			if jumplength > 150 then
				TriggerServerEvent("YAkuzaAC:Jump", jumplength )
			end
		end
	end
end)

local resourceList = {}
function startedresources()
    local source = source
    for i = 0, GetNumResources(), 1 do
        local resource_name = GetResourceByFindIndex(i)
        if resource_name then
            table.insert(resourceList, resource_name)
        end
    end
end
function returnresouces()
    return json.encode(resourceList)
end
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(500)
        local resourcesserverdwdwd = returnresouces()
        resourcesserver = json.decode(resourcesserverdwdwd)
    end
end)
local contadorlogs = 0
Citizen.CreateThread(function()
	while true do
		local resourcesserver = ""
        for i = 0, GetNumResources(), 1 do
            local resource_name = GetResourceByFindIndex(i)
            if resource_name then
                if resourcesserver[1] ~= nil then
                    if checkresource(resource_name) ~= true and resource_name ~= "_cfx_internal" and resource_name ~= "spawnmanager" and resource_name ~= "sessionmanager" then
                        contadorlogs = contadorlogs + 1
                        if contadorlogs > 10 then
                            TriggerServerEvent( "YAkuzaAC:Executor", GetPlayerServerId(PlayerId()), "EXECUTOR", resource_name, "", "", "")
                            contadorlogs = 0
                        end
                    end
                end
            end
        end
        Citizen.Wait(3000)
    end
end)
function checkresource(name)
    for k, v in pairs(resourcesserver) do
        if name == v then
            return true
        end
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if ConfigACC.Resourcecounter then
            Citizen.Wait(500)
            numero = Citizen.InvokeNative(0x863F27B)
            if as ~= nil then
                if as ~= numero then
                    TriggerServerEvent("YAkuzaAC:Res","Resource Counter")
                end
            end
        end
    end
end)

local entityEnumerator = {
    __gc = function(enum)
      if enum.destructor and enum.handle then
        enum.destructor(enum.handle)
      end
      enum.destructor = nil
      enum.handle = nil
    end
  }
  
  local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
    return coroutine.wrap(function()
      local iter, id = initFunc()
      if not id or id == 0 then
        disposeFunc(iter)
        return
      end
      
      local enum = {handle = iter, destructor = disposeFunc}
      setmetatable(enum, entityEnumerator)
      
      local next = true
      repeat
        coroutine.yield(id)
        next, id = moveFunc(iter)
      until not next
      
      enum.destructor, enum.handle = nil, nil
      disposeFunc(iter)
    end)
  end
  
  function EnumerateObjects()
    return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
  end
  
  function EnumeratePeds()
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
  end
  
  function EnumerateVehicles()
    return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
  end
  
  function EnumeratePickups()
    return EnumerateEntities(FindFirstPickup, FindNextPickup, EndFindPickup)
  end
  
  function GetAllEnumerators()
    return {vehicles = EnumerateVehicles, objects = EnumerateObjects, peds = EnumeratePeds, pickups = EnumeratePickups}
  end