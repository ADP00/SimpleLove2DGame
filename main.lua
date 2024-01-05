require('player')
require('enemy')

function love.load()
    score = 0
    Player:load()
    Enemy:load()
end

function love.update(dt)
    --if the distance between the center of the circle and center of the rectangle is less than
    --the randius of the circle plus the dist from the center of the rectangle to one of its corners
    if dist(Player.x+(Player.w/2), Player.y+(Player.h/2), Enemy.x, Enemy.y) < Enemy.r + math.sqrt(Player.h^2,Player.w^2)/2 then
        score = score + 1
        Enemy:changePosition()
    end
    --This will not determine exactly when they touch, but the approximation will not be that visually off
    Player:update(dt)
    Enemy:update(dt)
end

function love.draw()
    -- '..'' is string concatenation operator
    love.graphics.print("Score = "..score, 10, 10)
    Player:draw()
    Enemy:draw()
end

function dist(x1, y1, x2, y2)
    return math.sqrt( (x2-x1)^2 + (y2-y1)^2)
end