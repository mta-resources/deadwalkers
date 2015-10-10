local root = getRootElement()
 
addEventHandler("onPlayerLogin", root,
  function()
	triggerClientEvent ( "onRollMessageStart", getRootElement(), getPlayerName(source).." #FFFFFFentrou no servidor.",255,255,255, "join")
  end
)