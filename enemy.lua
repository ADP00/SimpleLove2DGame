Enemy = {}

function Enemy:load()
    self.r = 15
    --circle position will not go out of bounds
    self.x = math.random(self.r, love.graphics.getWidth()-self.r)
    self.y = math.random(self.r, love.graphics.getHeight()-self.r)
end

function Enemy:update(dt)
    
end

function Enemy:draw()
    love.graphics.circle('line', self.x, self.y, self.r)
end

--randomize position with same boundary
function Enemy:changePosition()
    self.x = math.random(self.r, love.graphics.getWidth()-self.r)
    self.y = math.random(self.r, love.graphics.getHeight()-self.r)
end