

--------------------------------------------------------------
--                     Global Variables                     --
--------------------------------------------------------------

playerX         = 400
playerY         = 300

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
    love.graphics.rectangle("fill", 0, 0, 1024, 768)
end

function drawPlayer()
    love.graphics.setColor(COLOR_WHITE)
    drawCenteredRectangle("fill", playerX, playerY, 50, 50)
    love.graphics.setColor(COLOR_BLACK)
    love.graphics.setLineWidth(5)
    drawCenteredRectangle("line", playerX, playerY, 50, 50)
    love.graphics.setColor(COLOR_BLACK)
    drawCenteredRectangle("fill", playerX, playerY, 10, 10)
end

function drawCenteredRectangle(fillMode, x, y, w, h)
    love.graphics.rectangle(fillMode, x - (w / 2), y - (h / 2), w, h)
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
love.window.setMode(1024, 768)
-- ...
