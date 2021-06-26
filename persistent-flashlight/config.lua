Config = {
	always_on = false, -- If true then weaponlights and flashlight are always persistent and cannot be modifed by individial players, but if false then players can use the command to turn the persistence on and off.

	command = 'plight', -- The command name to be used if always_on is set to true.
	description = 'Toggle flashlight being on even while not aiming it', -- The description of the command.

	notifications = true, -- Set to true if you want notifications when using the command, set to false if you don't.
	notif_on = '~g~You turned persistent flashlight on', -- Notification for when turning persistance on.
	notif_off = '~r~You turned persistent flashlight off', -- Notification for when turning persistance off.
}
