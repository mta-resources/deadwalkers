--------------------------------------------------------------------
-- Connects a player in to the game
-- @param Player player:      the player that is trying to login
-- @param string user:        player's username
-- @param string pass:        player's password
-- @param string origin:      the resource's name which is calling this function
-- @param string callback:    function (in origin resource) that will receive the response
-- @exported_function
--------------------------------------------------------------------
function login(player, user, pass, origin, callback)
  local account = getAccount(user, pass)
  if not account then 
    call(getResourceFromName(origin), callback, false) 
    return false
  end

  if logIn(player, account, pass) then
    call(getResourceFromName(origin), callback, true)
    spawnPlayerOnMap(player)
    return true
  end
end

--------------------------------------------------------------------
-- Registers a player in to the game
-- @param Player player:      the player that is trying to login
-- @param string user:        player's username
-- @param string pass:        player's password
-- @param string origin:      the resource's name which is calling this function
-- @param string callback:    function (in origin resource) that will receive the response
-- @exported_function
--------------------------------------------------------------------
function register(player, user, pass, origin, callback)
  local registered = addAccount(user, pass)
  if registered then
    call(getResourceFromName(origin), callback, true)
    login(player, user, pass, origin, callback)
    return true
  else
    call(getResourceFromName(origin), callback, false)
    return false
  end
end

--------------------------------------------------------------------
-- Gets the last player positions
-- @param Player thePlayer:   current player
--------------------------------------------------------------------
function spawnPlayerOnMap(thePlayer)

  -- Gets the last player's x, y and z positions
  local x, y, z = dwGetLastPlayerPosition(thePlayer)
  if not x or not y or not z then
    -- first time playing, we need to create it
    -- temporary vars
    x = 0
    y = 0
    z = 0
  end

  -- Spawns the player on the map
  spawnPlayer(thePlayer, x, y, z+1.5, 0, dwGetPlayerSkin(thePlayer))
  fadeCamera(thePlayer, true)
  setCameraTarget(thePlayer, thePlayer)
end

