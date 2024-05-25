-- Made by Skyficek
local RPC_NAME = "JMENO_RPC" -- ⚠️
local app_id = "ID_APLIKACNIHO_BOTA" -- ⚠️
local serverIP = "ZDE_ZADEJ_IP_SERVERU" -- ⚠️
local DiscordInvite = "ZDE_ZADEJ_POZVANKU_NA_DISCORD" -- ⚠️

addEventHandler("onClientResourceStart", resourceRoot, function()
  if setDiscordApplicationID(app_id) then 
      
   setDiscordRichPresenceAsset(RPC_NAME, RPC_NAME)
   setDiscordRichPresenceButton(1, "🎮 Připojit se", serverIP)
   setDiscordRichPresenceButton(2, "⚙️ Pozvánka na Discord", DiscordInvite)
  
   updateRPC()
 end
end )

function updateRPC()
  local name = getPlayerName(localPlayer)
   setDiscordRichPresenceState("👥 Počet hráču: "..#getElementsByType("player").." z 50")
   setDiscordRichPresenceDetails("🎮 Hraje za "..name)
end
setTimer(updateRPC, 5000, 0)
