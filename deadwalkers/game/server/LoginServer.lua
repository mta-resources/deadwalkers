--------------------------------------------------------------------
-- Connects a player in to the game
-- @param Player player:      the player that is trying to login
-- @param string user:        player's username
-- @param string pass:        player's password
-- @param string origin:      the resource's name which is calling this function
-- @param string callback:    function (in origin resource) that will receive the response
--------------------------------------------------------------------
function login(player, user, pass, origin, callback)
  local account = getAccount(user, pass)
  if not account then 
    call(getResourceFromName(origin), callback, false, "Invalid login and/or username", "error") 
    return false
  end

  if logIn(player, account, pass) then
    call(getResourceFromName(origin), callback, true, "Logged successfully", "success")
    return true
  end
end