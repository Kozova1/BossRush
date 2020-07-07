PARTICLES = {}
function PARTICLES:add(sprite, x, y, rotate, flip, duration)
    table.insert(self, {
            sprite = sprite,
            x = x,
            y = y,
            rotate = rotate,
            flip = flip,
            duration = duration
        })
end

function PARTICLES:loop(dt)
    for i, par in ipairs(self) do
        if par.duration <= 0 then
            table.remove(self, i)
        else
            self[i].duration = par.duration - dt
            spr(par.sprite, par.x, par.y, 0, 1, par.flip, par.rotate)
        end
    end
end
