-- A CRect is a rect which is drawn centered around x and y,
-- rather than having x and y at the upper left corner

function drawFilledCRect(x, y, w, h)
    love.graphics.rectangle("fill", x - (w / 2), y - (h / 2), w, h)
end

function drawOutlineCRect(x, y, w, h)
    love.graphics.rectangle("line", x - (w / 2), y - (h / 2), w, h)
end
