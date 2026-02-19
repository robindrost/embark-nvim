-- Embark theme for Lualine
local M = {}

function M.theme()
	local colors = require("embark.colors").palette
	local config = require("embark")

	local transparent = config.config.transparent_background

	return {
		normal = {
			a = { fg = colors.space0, bg = colors.green, gui = "bold" },
			b = { fg = colors.astral1, bg = colors.space2 },
			c = { fg = colors.astral1, bg = transparent and colors.none or colors.space1 },
		},
		insert = {
			a = { fg = colors.space0, bg = colors.blue, gui = "bold" },
			b = { fg = colors.astral1, bg = colors.space2 },
			c = { fg = colors.astral1, bg = transparent and colors.none or colors.space1 },
		},
		visual = {
			a = { fg = colors.space0, bg = colors.purple, gui = "bold" },
			b = { fg = colors.astral1, bg = colors.space2 },
			c = { fg = colors.astral1, bg = transparent and colors.none or colors.space1 },
		},
		replace = {
			a = { fg = colors.space0, bg = colors.red, gui = "bold" },
			b = { fg = colors.astral1, bg = colors.space2 },
			c = { fg = colors.astral1, bg = transparent and colors.none or colors.space1 },
		},
		command = {
			a = { fg = colors.space0, bg = colors.yellow, gui = "bold" },
			b = { fg = colors.astral1, bg = colors.space2 },
			c = { fg = colors.astral1, bg = transparent and colors.none or colors.space1 },
		},
		inactive = {
			a = { fg = colors.astral0, bg = colors.space2 },
			b = { fg = colors.astral0, bg = colors.space2 },
			c = { fg = colors.astral0, bg = transparent and colors.none or colors.space1 },
		},
	}
end

return M
