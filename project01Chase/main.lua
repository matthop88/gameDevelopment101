require("utils")

--------------------------------------------------------------
--                     Global Variables                     --
--------------------------------------------------------------

WINDOW_WIDTH    = 1050
WINDOW_HEIGHT   =  800

playerX         = 375
playerY         = 275

COLOR_BLACK     = { 0,   0,   0   }
COLOR_WHITE     = { 1,   1,   1   }
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
