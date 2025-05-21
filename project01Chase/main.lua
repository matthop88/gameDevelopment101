require("utils")

--------------------------------------------------------------
--                     Global Variables                     --
--------------------------------------------------------------

WINDOW_WIDTH    = 1050
WINDOW_HEIGHT   =  800

playerX         =  375
playerY         =  275

PLAYER_SCREEN_LEFT     =   25
PLAYER_SCREEN_RIGHT    = 1025
PLAYER_SCREEN_TOP      =   25
PLAYER_SCREEN_BOTTOM   =  775

monsterX        =  700
monsterY        =  100

monsterEye1X    =  650
monsterEye1Y    =   50
monsterEye2X    =  680
monsterEye2Y    =   50

COLOR_BLACK     = { 0,   0,   0   }
COLOR_WHITE     = { 1,   1,   1   }
COLOR_OFF_WHITE = { 0.9, 0.9, 0.9 }
COLOR_DARK_GREY = { 0.3, 0.3, 0.3 }
-- ...
-- ...

--------------------------------------------------------------
--                          Setup                           --
--------------------------------------------------------------

-- ...
-- ...
-- ...

--------------------------------------------------------------
--                     LOVE2D Functions                     --
--------------------------------------------------------------

-------------------------------------------------
-- Called automagically by LOVE2D every frame  --
-------------------------------------------------
function love.draw()
    drawBackground()
    drawPlayer()
    drawMonster()
end

-------------------------------------------------
--     Called every time a key is pressed      --
-------------------------------------------------
function love.keypressed(key)
    if key == "left" then
        playerX = playerX - 50
    elseif key == "right" then
        playerX = playerX + 50
    elseif key == "up" then
        playerY = playerY - 50
    elseif key == "down" then
        playerY = playerY + 50
    elseif key == "a" then
        monsterEye1X = monsterEye1X - 1
    elseif key == "d" then
        monsterEye1X = monsterEye1X + 1
    elseif key == "w" then
        monsterEye1Y = monsterEye1Y - 1
    elseif key == "s" then
        monsterEye1Y = monsterEye1Y + 1
    elseif key == "j" then
        monsterEye2X = monsterEye2X - 1
    elseif key == "k" then
        monsterEye2X = monsterEye2X + 1
    elseif key == "i" then
        monsterEye2Y = monsterEye2Y - 1
    elseif key == "m" then
        monsterEye2Y = monsterEye2Y + 1
    end

    if playerX < PLAYER_SCREEN_LEFT then playerX = PLAYER_SCREEN_RIGHT
    elseif playerX > PLAYER_SCREEN_RIGHT then playerX = PLAYER_SCREEN_LEFT
    end

    if playerY < PLAYER_SCREEN_TOP then playerY = PLAYER_SCREEN_BOTTOM
    elseif playerY > PLAYER_SCREEN_BOTTOM then playerY = PLAYER_SCREEN_TOP
    end
        
end

-- ...

--------------------------------------------------------------
--                     Drawing Functions                    --
--------------------------------------------------------------

function drawBackground()
    love.graphics.setColor(COLOR_DARK_GREY)
    love.graphics.rectangle("fill", 0, 0, WINDOW_WIDTH, WINDOW_HEIGHT)
end

function drawPlayer()
    love.graphics.setColor(COLOR_WHITE)
    drawFilledCRect(playerX, playerY, 50, 50)
    love.graphics.setColor(COLOR_BLACK)
    love.graphics.setLineWidth(5)
    drawOutlineCRect(playerX, playerY, 50, 50)
    love.graphics.setColor(COLOR_BLACK)
    drawFilledCRect(playerX, playerY, 10, 10)
end

function drawMonster()
    love.graphics.setColor(COLOR_OFF_WHITE)
    love.graphics.circle("fill", monsterX, monsterY, 75, 75)
    love.graphics.setColor(COLOR_BLACK)
    love.graphics.circle("line", monsterX, monsterY, 75, 75)
    love.graphics.setColor(COLOR_WHITE)
    love.graphics.circle("fill", monsterEye1X, monsterEye1Y, 20, 20)
    love.graphics.circle("fill", monsterEye2X, monsterEye2Y, 20, 20)
end

-- ...
-- ...

--------------------------------------------------------------
--                     Update Functions                     --
--------------------------------------------------------------

-- ...
-- ...
-- ...

--------------------------------------------------------------
--                    Collision Functions                   --
--------------------------------------------------------------

-- ...
-- ...
-- ...

--------------------------------------------------------------
--                    Game Over Functions                   --
--------------------------------------------------------------

-- ...
-- ...
-- ...

--------------------------------------------------------------
--                  Static Code: Runs First                 --
--------------------------------------------------------------

love.window.setTitle("CHASE!!!")
love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT)
-- ...
