--[[
    Prison Life Script created by Bizaare#0155 (now @leavix on discord)
]]--

-- Team initializations & assignments

CreateTeam(Color3.fromRGB(220, 220, 220))
PlayerAdded(function(Player)
    wait(4)
    CreateTeam(Color3.fromRGB(7, 42, 108))
    CreateTeam(Color3.fromRGB(222, 89, 28))
end)

SetTeamSpawnPoints(Color3.fromRGB(222, 89, 28), {workspace.inmSpawn})
SetTeamSpawnPoints(Color3.fromRGB(7, 42, 108), {workspace.polSpawn2, workspace.polSpawn3, workspace.polSpawn4, workspace.polSpawn5})


PlayerAdded(function(Player)
    SetTeamSpawnPoints(Color3.fromRGB(7, 42, 108), {workspace.polSpawn2, workspace.polSpawn3, workspace.polSpawn4, workspace.polSpawn5})
end)

CharacterAdded(function(Player)
    SetTeamSpawnPoints(Color3.fromRGB(222, 89, 28), {workspace.inmSpawn})
end)

CharacterAdded(function(Player)
    SetTeamSpawnPoints(Color3.fromRGB(7, 42, 108), {workspace.polSpawn2, workspace.polSpawn3, workspace.polSpawn4, workspace.polSpawn5})
end)

PlayerAdded(function(Player)
    Player.TeamColor.Value = Color3.fromRGB(220, 220, 220)
    SetTeamSpawnPoints(Color3.fromRGB(222, 89, 28), {workspace.inmSpawn})
    wait(4)
    Player.TeamColor.Value = Color3.fromRGB(220, 220, 220)
    SetTeamSpawnPoints(Color3.fromRGB(7, 42, 108), {workspace.polSpawn2, workspace.polSpawn3, workspace.polSpawn4, workspace.polSpawn5})
end)



Touched(workspace.chooserPol, function(Player)
    Player.TeamColor.Value = Color3.fromRGB(7, 42, 108)
    Teleporter(workspace.chooserPol, workspace.polSpawn)
end)

Touched(workspace.chooserCri, function(Player)
    Player.TeamColor.Value = Color3.fromRGB(222, 89, 28)
    Teleporter(workspace.chooserCri, workspace.inmSpawn)
end)

-- Start of all Door manifestation

local YardOpen = false
Clicked(workspace.yardGateBu, function(Player)
    if YardOpen == false then
        workspace.polDoor5.CanCollide = false
        workspace.polDoor6.CanCollide = false
        workspace.polDoor5.Transparency = 0.9
        workspace.polDoor6.Transparency = 0.9
        wait(40)
        YardOpen = true
    end
end)

Clicked(workspace.yardGateBo, function(Player)
    if YardOpen == true then
        workspace.polDoor5.CanCollide = true
        workspace.polDoor6.CanCollide = true
        workspace.polDoor5.Transparency = 0.3
        workspace.polDoor6.Transparency = 0.3
        wait(40)
        YardOpen = false
    end
end)

-- Normal Door manifestation

local varPolDoorLock = false
Touched(workspace.polDoor1, function(Player)
    if Player.TeamColor.Value == Color3.fromRGB(7, 42, 108) and varPolDoorLock == false then 
        workspace.polDoor1.CanCollide = false
        workspace.polDoor2.CanCollide = false
        workspace.polDoor2.Transparency = 0.9
        workspace.polDoor1.Transparency = 0.9
        varPolDoorLock = true
        wait(3)
        
        workspace.polDoor2.CanCollide = true
        workspace.polDoor1.CanCollide = true
        workspace.polDoor2.Transparency = 0.3
        workspace.polDoor1.Transparency = 0.3
varPolDoorLock = false
    end
end)

Touched(workspace.polDoor2, function(Player)
    if Player.TeamColor.Value == Color3.fromRGB(7, 42, 108) and varPolDoorLock == false then
        workspace.polDoor2.CanCollide = false
        workspace.polDoor1.CanCollide = false
        workspace.polDoor2.Transparency = 0.9
        workspace.polDoor1.Transparency = 0.9
        varPolDoorLock = true
        wait(3)
        
        workspace.polDoor2.CanCollide = true
        workspace.polDoor1.CanCollide = true
        workspace.polDoor2.Transparency = 0.3
        workspace.polDoor1.Transparency = 0.3
        varPolDoorLock = false
    end
end)

local varPolDoorLock2 = false
Touched(workspace.polDoor3, function(Player)
    if Player.TeamColor.Value == Color3.fromRGB(7, 42, 108) and varPolDoorLock2 == false then 
        workspace.polDoor4.CanCollide = false
        workspace.polDoor3.CanCollide = false
        workspace.polDoor4.Transparency = 0.9
        workspace.polDoor3.Transparency = 0.9
        varPolDoorLock2 = true
        wait(3)
        
        workspace.polDoor4.CanCollide = true
        workspace.polDoor3.CanCollide = true
        workspace.polDoor4.Transparency = 0.3
        workspace.polDoor3.Transparency = 0.3
        varPolDoorLock2 = false
    end
end)

Touched(workspace.polDoor4, function(Player)
    if Player.TeamColor.Value == Color3.fromRGB(7, 42, 108) and varPolDoorLock2 == false then
        workspace.polDoor3.CanCollide = false
        workspace.polDoor4.CanCollide = false
        workspace.polDoor3.Transparency = 0.9
        workspace.polDoor4.Transparency = 0.9
        varPolDoorLock2 = true
        wait(3)
        
        workspace.polDoor3.CanCollide = true
        workspace.polDoor4.CanCollide = true
        workspace.polDoor4.Transparency = 0.3
        workspace.polDoor3.Transparency = 0.3
        varPolDoorLock2 = false
    end
end)

local varPolDoorLock3 = false
Touched(workspace.polDoor5, function(Player)
    if Player.TeamColor.Value == Color3.fromRGB(7, 42, 108) and varPolDoorLock3 == false then 
        if YardOpen == false then
            workspace.polDoor5.CanCollide = false
            workspace.polDoor6.CanCollide = false
            workspace.polDoor5.Transparency = 0.9
            workspace.polDoor6.Transparency = 0.9
            varPolDoorLock3 = true
            wait(3)
        
            workspace.polDoor5.CanCollide = true
            workspace.polDoor6.CanCollide = true
            workspace.polDoor5.Transparency = 0.3
            workspace.polDoor6.Transparency = 0.3
            varPolDoorLock3 = false
        end
    end
end)

Touched(workspace.polDoor6, function(Player)
    if Player.TeamColor.Value == Color3.fromRGB(7, 42, 108) and varPolDoorLock3 == false then  
        if YardOpen == false then
            workspace.polDoor5.CanCollide = false
            workspace.polDoor6.CanCollide = false
            workspace.polDoor5.Transparency = 0.9
            workspace.polDoor6.Transparency = 0.9
            varPolDoorLock3 = true
            wait(3)
        
            workspace.polDoor5.CanCollide = true
            workspace.polDoor6.CanCollide = true
            workspace.polDoor5.Transparency = 0.3
            workspace.polDoor6.Transparency = 0.3
       
            varPolDoorLock3 = false
        end
    end
end)

local varPolDoorLock4 = false
Touched(workspace.polDoor7, function(Player)
    if Player.TeamColor.Value == Color3.fromRGB(7, 42, 108) and varPolDoorLock4 == false then 
        workspace.polDoor7.CanCollide = false
        workspace.polDoor8.CanCollide = false
        workspace.polDoor7.Transparency = 0.9
        workspace.polDoor8.Transparency = 0.9
        varPolDoorLock4 = true
        wait(3)
        
        workspace.polDoor7.CanCollide = true
        workspace.polDoor8.CanCollide = true
        workspace.polDoor7.Transparency = 0.3
        workspace.polDoor8.Transparency = 0.3
       
        varPolDoorLock4 = false
    end
end)

Touched(workspace.polDoor8, function(Player)
    if Player.TeamColor.Value == Color3.fromRGB(7, 42, 108) and varPolDoorLock4 == false then
        workspace.polDoor7.CanCollide = false
        workspace.polDoor8.CanCollide = false
        workspace.polDoor7.Transparency = 0.9
        workspace.polDoor8.Transparency = 0.9
        varPolDoorLock4 = true
        wait(3)
        
        workspace.polDoor7.CanCollide = true
        workspace.polDoor8.CanCollide = true
        workspace.polDoor7.Transparency = 0.3
        workspace.polDoor8.Transparency = 0.3
        varPolDoorLock4 = false
    end
end)

local varPolDoorLock5 = false
Touched(workspace.polDoor9, function(Player)
    if Player.TeamColor.Value == Color3.fromRGB(7, 42, 108) and varPolDoorLock5 == false then 
        workspace.polDoor9.CanCollide = false
        workspace.polDoor10.CanCollide = false
        workspace.polDoor9.Transparency = 0.9
        workspace.polDoor10.Transparency = 0.9
        varPolDoorLock5 = true
        wait(3)
        
        workspace.polDoor9.CanCollide = true
        workspace.polDoor10.CanCollide = true
        workspace.polDoor9.Transparency = 0.3
        workspace.polDoor10.Transparency = 0.3
       
        varPolDoorLock5 = false
    end
end)

Touched(workspace.polDoor10, function(Player)
    if Player.TeamColor.Value == Color3.fromRGB(7, 42, 108) and varPolDoorLock5 == false then 
        workspace.polDoor9.CanCollide = false
        workspace.polDoor10.CanCollide = false
        workspace.polDoor9.Transparency = 0.9
        workspace.polDoor10.Transparency = 0.9
        varPolDoorLock5 = true
        wait(3)
        
        workspace.polDoor9.CanCollide = true
        workspace.polDoor10.CanCollide = true
        workspace.polDoor9.Transparency = 0.3
        workspace.polDoor10.Transparency = 0.3
       
        varPolDoorLock5 = false
    end
end)


local varPolDoorLockYard = false
Touched(workspace.yardExit, function(Player)
    if Player.TeamColor.Value == Color3.fromRGB(7, 42, 108) and varPolDoorLockYard == false then 
        workspace.yardExit.CanCollide = false
        workspace.yardExit.Transparency = 0.9
        varPolDoorLockYard = true
        wait(3)
        
        workspace.yardExit.CanCollide = true
        workspace.yardExit.Transparency = 0.3
       
        varPolDoorLockYard = false
    end
end)

-- Button localization

local CellsOpen = true
Clicked(workspace.cellGateBu, function(Player)
    if Player.TeamColor.Value == Color3.fromRGB(7, 42, 108) and CellsOpen == true then
        workspace.CellWall1.CanCollide = true
        workspace.CellWall2.CanCollide = true
        workspace.CellWall3.CanCollide = true
        workspace.CellWall4.CanCollide = true
        workspace.CellWall5.CanCollide = true
        workspace.CellWall6.CanCollide = true
        workspace.CellWall7.CanCollide = true
        workspace.CellWall8.CanCollide = true
        workspace.CellWall9.CanCollide = true
        workspace.CellWall10.CanCollide = true
        workspace.CellWall11.CanCollide = true
        workspace.CellWall12.CanCollide = true
        workspace.CellWall13.CanCollide = true
        workspace.CellWall14.CanCollide = true
        workspace.CellWall1.Transparency = 0   
        workspace.CellWall2.Transparency = 0
        workspace.CellWall3.Transparency = 0
        workspace.CellWall4.Transparency = 0
        workspace.CellWall5.Transparency = 0
        workspace.CellWall6.Transparency = 0
        workspace.CellWall7.Transparency = 0
        workspace.CellWall8.Transparency = 0
        workspace.CellWall9.Transparency = 0
        workspace.CellWall10.Transparency = 0
        workspace.CellWall11.Transparency = 0
        workspace.CellWall12.Transparency = 0
        workspace.CellWall13.Transparency = 0
        workspace.CellWall14.Transparency = 0
        wait(40)

        CellsOpen = false
        
    end
end)

Clicked(workspace.cellGateBo, function(Player)
    if Player.TeamColor.Value == Color3.fromRGB(7, 42, 108) and CellsOpen == false then
        workspace.CellWall1.CanCollide = false
        workspace.CellWall2.CanCollide = false
        workspace.CellWall3.CanCollide = false
        workspace.CellWall4.CanCollide = false
        workspace.CellWall5.CanCollide = false
        workspace.CellWall6.CanCollide = false
        workspace.CellWall7.CanCollide = false
        workspace.CellWall8.CanCollide = false
        workspace.CellWall9.CanCollide = false
        workspace.CellWall10.CanCollide = false
        workspace.CellWall11.CanCollide = false
        workspace.CellWall12.CanCollide = false
        workspace.CellWall13.CanCollide = false
        workspace.CellWall14.CanCollide = false
        workspace.CellWall1.Transparency = 0.6
        workspace.CellWall2.Transparency = 0.6
        workspace.CellWall3.Transparency = 0.6
        workspace.CellWall4.Transparency = 0.6
        workspace.CellWall5.Transparency = 0.6
        workspace.CellWall6.Transparency = 0.6
        workspace.CellWall7.Transparency = 0.6
        workspace.CellWall8.Transparency = 0.6
        workspace.CellWall9.Transparency = 0.6
        workspace.CellWall10.Transparency = 0.6
        workspace.CellWall11.Transparency = 0.6
        workspace.CellWall12.Transparency = 0.6
        workspace.CellWall13.Transparency = 0.6
        workspace.CellWall14.Transparency = 0.6
        wait(40)

        CellsOpen = true
    end
end)


local FreeGuardEntry = true
Clicked(workspace.guardSecre, function(Player)
    if FreeGuardEntry == true then
        Hint(15, "THE GUARD ROOM HAS BEEN BREACHED! BREAK IN BEFORE IT CLOSES!")
        workspace.polDoor1.CanCollide = false
        workspace.polDoor2.CanCollide = false
        workspace.polDoor2.Transparency = 0.9
        workspace.polDoor1.Transparency = 0.9
        FreeGuardEntry = true
        wait(40)
        
        workspace.polDoor2.CanCollide = true
        workspace.polDoor1.CanCollide = true
        workspace.polDoor2.Transparency = 0.3
        workspace.polDoor1.Transparency = 0.3
        wait(1)

        FreeGuardEntry = false
    end
end)

-- Givetool functions

Clicked(workspace.gunWall1, function(Player)
    GiveTool(Player, 'Paintball')
end)

Clicked(workspace.swordWall, function(Player)
    GiveTool(Player, 'Sword')
end)

Clicked(workspace.rpgWall, function(Player)
    GiveTool(Player, 'Rocket')
end)
