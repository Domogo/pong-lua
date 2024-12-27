push = require("push")

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest")

    push:setupScreen(WINDOW_WIDTH, WINDOW_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        resizable = false,
        fullscreen = false,
        vsync = true
    })
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
end

function love.draw()
    push:apply("start")

    love.graphics.printf("Hello Pong!", 0, WINDOW_WIDTH / 2, WINDOW_WIDTH, "center")

    push:apply("end")
end
