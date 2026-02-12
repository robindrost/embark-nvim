-- Embark Neovim theme
local M = {}

local colors_module = require("embark.colors")
local highlights_module = require("embark.highlights")

-- Default configuration
M.config = {
  transparent_background = false,
  terminal_italics = true,
  terminal_colors = true,
}

-- Setup function to configure the theme
function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

-- Load the colorscheme
function M.load()
  -- Reset colors
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "embark"

  -- Get colors and highlights
  local colors = colors_module.palette
  local groups = highlights_module.setup(colors, M.config)

  -- Apply highlight groups
  for group, settings in pairs(groups) do
    vim.api.nvim_set_hl(0, group, settings)
  end

  -- Set terminal colors if enabled
  if M.config.terminal_colors then
    vim.g.terminal_color_0 = colors.space4
    vim.g.terminal_color_1 = colors.red
    vim.g.terminal_color_2 = colors.green
    vim.g.terminal_color_3 = colors.yellow
    vim.g.terminal_color_4 = colors.blue
    vim.g.terminal_color_5 = colors.purple
    vim.g.terminal_color_6 = colors.cyan
    vim.g.terminal_color_7 = colors.space1
    vim.g.terminal_color_8 = colors.space4
    vim.g.terminal_color_9 = colors.dark_red
    vim.g.terminal_color_10 = colors.dark_green
    vim.g.terminal_color_11 = colors.dark_yellow
    vim.g.terminal_color_12 = colors.dark_blue
    vim.g.terminal_color_13 = colors.dark_purple
    vim.g.terminal_color_14 = colors.dark_cyan
    vim.g.terminal_color_15 = colors.astral0
  end
end

return M
