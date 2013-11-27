--------------------------------SERVERSIDE
include("shared.lua")
----------------------------SHARED
AddCSLuaFile("shared.lua")
----------------------------------CLIENTSIDE
AddCSLuaFile("cl_init.lua")

RunConsoleCommand("sv_kickerrornum", "0")	--server won't kick for lua errors
RunConsoleCommand("sv_autorefresh", "1")	--re-executes gamemode while ingame the same second you save the file
RunConsoleCommand("lua_log_sv", "1")	--logs serverside lua errors
RunConsoleCommand("lua_log_cl", "1")	--logs clientside lua errors
RunConsoleCommand("sv_lan", "1")	--ensures gmod server is set to lan
--RunConsoleCommand("sv_cheats", "1")

--=======F1-F4 MENUS
--[[
--F1
function show_help(ply)
end
hook.Add("ShowHelp", "HookShowHelp", show_help)

--F2
function show_team(ply)
end
hook.Add("ShowTeam", "HookShowTeam", show_team)

--F3
function show_spare1(ply)
end
hook.Add("ShowSpare1", "HookShowSpare1", show_spare1)
--]]
--F4
function show_spare2(ply)
	ply:SendLua("DisconnectSelf()")
end
hook.Add("ShowSpare2", "HookShowSpare2", show_spare2)
