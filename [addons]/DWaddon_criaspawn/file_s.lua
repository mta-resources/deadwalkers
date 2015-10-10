--[[
-- Coded by pDevice
--]]

addEvent("onPlayerDeleteSpawnPoints", true)
function deleteSpawnPoint(player, nome)
    if fileExists("spawns/"..tostring(nome)..".txt") then
       if fileDelete("spawns/"..tostring(nome)..".txt") then
       outputChatBox("#00a5ff* Item [#ff0000"..tostring(nome)..".txt#00a5ff] Deletado com Sucesso !", player, 0, 0, 0, true)
       end
    else
       outputChatBox("#00a5ff* O Arquivo [#ff0000"..tostring(nome)..".txt#00a5ff] não existe !", player, 0, 0, 0, true)
    end
end
addEventHandler("onPlayerDeleteSpawnPoints", getRootElement(), deleteSpawnPoint)

addEvent("onPlayerCreateSpawnPointFarm", true)
function spawnPoint_Farm(player, x, y, z)
    if fileExists("spawns/farm.txt") then
        hFile = fileOpen("spawns/farm.txt")
    else
        hFile = fileCreate("spawns/farm.txt")     
    end
    
    fileSetPos(hFile, fileGetSize(hFile))   
    
    if fileWrite(hFile, "{"..tostring(x)..","..tostring(y)..","..tostring(z).."},\r\n") then
        outputChatBox("#00a5ff* Spawn Point tipo [#ff0000Farm#00a5ff] adicionado !", player, 0, 0, 0, true)
    end
    
    fileClose(hFile)
end
addEventHandler("onPlayerCreateSpawnPointFarm", getRootElement(), spawnPoint_Farm)

addEvent("onPlayerCreateSpawnPointIndustrial", true)
function spawnPoint_Industrial(player, x, y, z)
    if fileExists("spawns/industrial.txt") then
        hFile = fileOpen("spawns/industrial.txt")
    else
        hFile = fileCreate("spawns/industrial.txt")     
    end
    
    fileSetPos(hFile, fileGetSize(hFile))  
    if fileWrite(hFile, "{"..tostring(x)..","..tostring(y)..","..tostring(z).."},\r\n") then
        outputChatBox("#00a5ff* Spawn Point tipo [#ff0000Industrial#00a5ff] adicionado !", player, 0, 0, 0, true)
    end 
    
    fileClose(hFile)    
end
addEventHandler("onPlayerCreateSpawnPointIndustrial", getRootElement(), spawnPoint_Industrial)

addEvent("onPlayerCreateSpawnPointMilitary", true)
function spawnPoint_Military(player, x, y, z)
    if fileExists("spawns/military.txt") then
        hFile = fileOpen("spawns/military.txt")
    else
        hFile = fileCreate("spawns/military.txt")     
    end
    
    fileSetPos(hFile, fileGetSize(hFile))  
    
    if fileWrite(hFile, "{"..tostring(x)..","..tostring(y)..","..tostring(z).."},\r\n") then
        outputChatBox("#00a5ff* Spawn Point tipo [#ff0000Military#00a5ff] adicionado !", player, 0, 0, 0, true)
    end
  
    fileClose(hFile)  
end
addEventHandler("onPlayerCreateSpawnPointMilitary", getRootElement(), spawnPoint_Military)

addEvent("onPlayerCreateSpawnPointResidential", true)
function spawnPoint_Residential(player, x, y, z)
    if fileExists("spawns/residential.txt") then
        hFile = fileOpen("spawns/residential.txt")
    else
        hFile = fileCreate("spawns/residential.txt")     
    end
    
    fileSetPos(hFile, fileGetSize(hFile))  
    
    if fileWrite(hFile, "{"..tostring(x)..","..tostring(y)..","..tostring(z).."},\r\n") then
        outputChatBox("#00a5ff* Spawn Point tipo [#ff0000Residential#00a5ff] adicionado !", player, 0, 0, 0, true)
    end
 
    fileClose(hFile)     
end
addEventHandler("onPlayerCreateSpawnPointResidential", getRootElement(), spawnPoint_Residential)

addEvent("onPlayerCreateSpawnPointSupermarket", true)
function spawnPoint_Supermarket(player, x, y, z)
    if fileExists("spawns/supermarket.txt") then
        hFile = fileOpen("spawns/supermarket.txt")
    else
        hFile = fileCreate("spawns/supermarket.txt")     
    end
    
    fileSetPos(hFile, fileGetSize(hFile))  
    
    if fileWrite(hFile, "{"..tostring(x)..","..tostring(y)..","..tostring(z).."},\r\n") then
        outputChatBox("#00a5ff* Spawn Point tipo [#ff0000Supermarket#00a5ff] adicionado !", player, 0, 0, 0, true)
    end
    
    fileClose(hFile)      
end
addEventHandler("onPlayerCreateSpawnPointSupermarket", getRootElement(), spawnPoint_Supermarket)