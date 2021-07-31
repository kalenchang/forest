function love.load()

    math.randomseed(os.time())
    math.random(); math.random(); math.random()

    local gridXmax = 10
    local gridYmax = 10

    cellXsize = 40
    cellYsize = 40

    grid = {}

    for y = 1, gridYmax do
        grid[y] = {}
        for x = 1, gridXmax do
            local gridValue = math.random()
            if gridValue > 0.8 then
                grid[y][x] = 1 -- tree
            elseif gridValue > 0.6 then
                grid[y][x] = 2 -- nutrient
            else
                grid[y][x] = 0 -- nothing
            end
        end
    end

end


function love.update()

end


function love.draw()

    function drawGrid()
        
        for y = 1, #grid do
            for x = 1, #grid[y] do
                if grid[y][x] == 1 then
                --     love.graphics.setColor(1,1,0)
                --     love.graphics.rectangle("fill", (x-1) * cellXsize, (y-1) * cellYsize, cellXsize, cellYsize)
                    love.graphics.setColor(0.3,0.8,0.4)
                    local radius = .3 * cellXsize
                    love.graphics.circle("fill", (x-0.5) * cellXsize, (y-0.5) * cellYsize, radius)
                elseif grid[y][x] == 2 then

                    love.graphics.setColor(0.4,0.2,0.2)
                    local radius = .1 * cellXsize
                    love.graphics.circle("fill", (x-0.8*math.random()) * cellXsize, (y-0.5) * cellYsize, radius)

                end
            end
        end

    end


    drawGrid()

end