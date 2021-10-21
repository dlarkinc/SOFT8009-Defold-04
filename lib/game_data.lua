json = require "lib.json"

function load_game_data()
	file = io.open("data/game.json", "r")
	json_string = file:read("*a")
	file:close()
	table_data = json.parse(json_string)
	return table_data
end

function save_game_data(game_data)
	file = io.open("data/game.json", "w")
	file:write(json.stringify(game_data))
	file:close()
end