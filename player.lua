Player = {}

function Player:load()
    self.h = 20
    self.w = 10
    --starting position should be centered
    self.x = love.graphics.getWidth()/2 - self.w/2
    self.y = love.graphics.getHeight()/2 - self.h/2
end

function Player:update(dt)
    --player movement logic
    if love.keyboard.isDown('up', 'w') then
        self.y = self.y - 2
    end
    if love.keyboard.isDown('down', 's') then
        self.y = self.y + 2
    end
    if love.keyboard.isDown('right', 'd') then
        self.x = self.x + 2
    end
    if love.keyboard.isDown('left', 'a') then
        self.x = self.x - 2
    end

    --Boundary logic
    if self.x < 0 then
        self.x = 0
    end
    if self.y < 0 then
        self.y = 0
    end
    if self.y+self.h > love.graphics.getHeight() then
        self.y = love.graphics.getHeight()-self.h
    end
    if self.x+self.w > love.graphics.getWidth() then
        self.x = love.graphics.getWidth()-self.w
    end
end

function Player:draw()
    love.graphics.rectangle('line', self.x, self.y, self.w, self.h)

end
