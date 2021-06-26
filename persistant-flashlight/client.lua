local peristance = false

if not Config.always_on then
	RegisterCommand(Config.command, function()
		peristance = not peristance

		SetFlashLightKeepOnWhileMoving(peristance)

		if not Config.notifications then return end

		if peristance then
			displayNotification(Config.notif_on)
		else
			displayNotification(Config.notif_off)
		end
	end)
end

Citizen.CreateThread(function()
	if Config.always_on then
		peristance = true
		SetFlashLightKeepOnWhileMoving(peristance)
	else
		TriggerEvent('chat:addSuggestion', '/'..Config.command, Config.description)
	end

	while true do -- Garbage collection
		Citizen.Wait(10000)
		collectgarbage()
	end
end)

function displayNotification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end
