-- Example Neovim configuration for Embark theme
-- Add this to your init.lua or lua/plugins/colorscheme.lua

-- Option 1: Basic usage
vim.cmd("colorscheme embark")

-- Option 2: With configuration
require("embark").setup({
  transparent_background = false,
  terminal_italics = true,
  terminal_colors = true,
})
vim.cmd("colorscheme embark")

-- Option 3: With transparent background
require("embark").setup({
  transparent_background = true,  -- Great for terminal transparency
})
vim.cmd("colorscheme embark")

-- Option 4: For lazy.nvim users
return {
  dir = vim.fn.stdpath("config") .. "/path/to/embark-theme",
  name = "embark",
  lazy = false,
  priority = 1000,
  config = function()
    require("embark").setup({
      transparent_background = false,
      terminal_italics = true,
      terminal_colors = true,
    })
    vim.cmd("colorscheme embark")
  end,
}
