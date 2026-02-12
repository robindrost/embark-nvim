-- Example configuration for snacks.nvim with Embark theme
-- The theme automatically styles all snacks.nvim panels to match the editor background

return {
  -- Embark theme
  {
    dir = "/Users/robindrost/Dev/nvimtest",  -- Update this path
    name = "embark",
    lazy = false,
    priority = 1000,
    config = function()
      require("embark").setup({
        transparent_background = false,  -- Set to true for transparent panels
        terminal_italics = true,
        terminal_colors = true,
      })
      vim.cmd("colorscheme embark")
    end,
  },

  -- Snacks.nvim - all panels will match editor background automatically
  {
    "folke/snacks.nvim",
    priority = 900,
    lazy = false,
    opts = {
      -- Dashboard configuration
      dashboard = {
        enabled = true,
        preset = {
          header = [[
███████╗███╗   ███╗██████╗  █████╗ ██████╗ ██╗  ██╗
██╔════╝████╗ ████║██╔══██╗██╔══██╗██╔══██╗██║ ██╔╝
█████╗  ██╔████╔██║██████╔╝███████║██████╔╝█████╔╝
██╔══╝  ██║╚██╔╝██║██╔══██╗██╔══██║██╔══██╗██╔═██╗
███████╗██║ ╚═╝ ██║██████╔╝██║  ██║██║  ██║██║  ██╗
╚══════╝╚═╝     ╚═╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝]],
        },
        sections = {
          { section = "header" },
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
        },
      },

      -- Notifier configuration
      notifier = {
        enabled = true,
        timeout = 3000,
        -- Styles will use Embark colors automatically
      },

      -- Picker configuration (fuzzy finder)
      picker = {
        enabled = true,
        -- Background will match editor automatically
      },

      -- Indent guides configuration
      indent = {
        enabled = true,
        -- Uses Embark purple for scope highlighting
      },

      -- Other snacks features
      bigfile = { enabled = true },
      quickfile = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
    },
  },
}

-- Example keymaps for snacks.nvim
vim.keymap.set("n", "<leader>.", function() Snacks.picker.smart() end, { desc = "Smart picker" })
vim.keymap.set("n", "<leader>ff", function() Snacks.picker.files() end, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", function() Snacks.picker.grep() end, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", function() Snacks.picker.buffers() end, { desc = "Find buffers" })
vim.keymap.set("n", "<leader>fr", function() Snacks.picker.recent() end, { desc = "Recent files" })
vim.keymap.set("n", "<leader>fh", function() Snacks.picker.help() end, { desc = "Help tags" })
vim.keymap.set("n", "<leader>fn", function() Snacks.notifier.show_history() end, { desc = "Notification history" })

-- Note: With transparent_background = true, all snacks.nvim panels
-- will have transparent backgrounds matching your terminal
