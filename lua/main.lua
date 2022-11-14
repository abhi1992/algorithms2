-- functions
pressed_button = function (buttons)
	if love.mouse.isDown(1) then
		local x, y = love.mouse.getX(), love.mouse.getY()
		for button_name, button in pairs (buttons) do
			if (x > button.x) and (x < (button.x + button.w)) and
			   (y > button.y) and (y < (button.y + button.h)) then
				button.clicked = true
				return button_name
			end
		end
	end
	return nil
end

button_draw = function (data)
	local x, y, w, h = data.x, data.y, data.w, data.h
	if data.clicked then
		data.clicked = false
	end
--	love.graphics.setColor(1, 1, 1)
	love.graphics.rectangle ('line', x, y, w, h)
	love.graphics.print(data.text, x+(w/2)-10*string.len(data.text), y) -- x + w/2 - length of 1 letter * no_of_letters
    --  
end

function love.draw()
    love.graphics.print("Hello World!", 400, 300)
    -- on draw
    for button_name, button in pairs (buttons) do
        button_draw(button)
    end
end


function love.load()
    buttons = {}
    buttons['Reset'] = {text = 'Reset', x=120, y=400, w=50, h=20}
    buttons['Next'] = {text = 'Next', x=50, y=400, w=50, h=20}
    buttons['Prev'] = {text = 'Prev', x=190, y=400, w=50, h=20}
end


function love.update()
    -- on update
    local pressed_button = pressed_button (buttons)
    if pressed_button and pressed_button == "Reset" then
        -- do code
    end
end

