-- Made by Skyficek

addEventHandler("onClientResourceStart", resourceRoot, function()
  local app_id = "ID_APLIKACNIHO_BOTA"
  if setDiscordApplicationID(app_id) then 
   setDiscordRichPresenceAsset("JMENO_RPC", "JMENO_RPC")
   setDiscordRichPresenceButton(1, "🎮 Připojit se", "ZDE_ZADEJ_IP_SERVERU")
   setDiscordRichPresenceButton(2, "⚙️ Pozvánka na Discord", "ZDE_ZADEJ_POZVANKU_NA_DISCORD")
   local name = getPlayerName(localPlayer)
   updateRPC()
 end
end )

function updateRPC()
  local name = getPlayerName(localPlayer)
   setDiscordRichPresenceState("👥 Počet hráču: "..#getElementsByType("player").." z 50")
   setDiscordRichPresenceDetails("🎮 Hraje za "..name)
end
setTimer(updateRPC, 5000, 0)