# Quick Start Guide

## Testing the Theme

1. **Quick Test** (without installing):
   ```bash
   # From this directory, run:
   nvim -u NONE -c "set rtp+=." -c "colorscheme embark" test_theme.lua
   ```

2. **Test with transparent background**:
   ```bash
   nvim -u NONE -c "set rtp+=." -c "lua require('embark').setup({transparent_background=true})" -c "colorscheme embark" test_theme.lua
   ```

## Installation Options

### Option 1: Symlink to Neovim Config

```bash
# Create symlinks
ln -s $(pwd)/colors ~/.config/nvim/colors/embark
ln -s $(pwd)/lua/embark ~/.config/nvim/lua/embark

# Then in your init.lua:
vim.cmd("colorscheme embark")
```

### Option 2: Copy Files

```bash
# Copy the theme files
cp -r colors ~/.config/nvim/
cp -r lua/embark ~/.config/nvim/lua/

# Then in your init.lua:
vim.cmd("colorscheme embark")
```

### Option 3: Use as Plugin with lazy.nvim

Create `~/.config/nvim/lua/plugins/colorscheme.lua`:

```lua
return {
  {
    dir = "/Users/robindrost/Dev/nvimtest",  -- Update this path
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
  },
}
```

## Customization Examples

### Transparent Background with Italics

```lua
require("embark").setup({
  transparent_background = true,
  terminal_italics = true,
  terminal_colors = true,
})
vim.cmd("colorscheme embark")
```

### No Italics (for terminals without italic support)

```lua
require("embark").setup({
  transparent_background = false,
  terminal_italics = false,
  terminal_colors = true,
})
vim.cmd("colorscheme embark")
```

### Transparent with Custom Terminal Colors

```lua
require("embark").setup({
  transparent_background = true,
  terminal_italics = true,
  terminal_colors = false,  -- Use terminal's own colors
})
vim.cmd("colorscheme embark")
```

## Verifying Installation

After installation, check if the theme is loaded:

```vim
:colorscheme
```

Should output: `embark`

Check theme colors are applied:

```vim
:highlight Normal
```

Should show the Embark color values.

## Troubleshooting

### Theme not loading
- Ensure `termguicolors` is enabled: `:set termguicolors?`
- Check Neovim version: `:version` (requires >= 0.8.0)

### Colors look wrong
- Verify your terminal supports true colors
- Check `$TERM` environment variable: `echo $TERM`
- Try setting: `export TERM=xterm-256color`

### Transparent background not working
- Ensure your terminal supports transparency
- Check terminal emulator settings
- Verify theme config: `lua print(vim.inspect(require('embark').config))`

## Advanced Configuration

### Override Specific Highlights

```lua
require("embark").setup({
  transparent_background = true,
})
vim.cmd("colorscheme embark")

-- Override specific highlight groups
vim.api.nvim_set_hl(0, "Comment", { fg = "#888888", italic = true })
vim.api.nvim_set_hl(0, "Function", { fg = "#FF0000", bold = true })
```

### Auto-toggle Transparency

```lua
local embark = require("embark")

-- Toggle transparency with a keymap
vim.keymap.set("n", "<leader>tt", function()
  embark.config.transparent_background = not embark.config.transparent_background
  embark.load()
  print("Transparent background:", embark.config.transparent_background)
end, { desc = "Toggle transparent background" })
```

## File Structure

```
embark-theme/
├── colors/
│   └── embark.lua          # Colorscheme entry point
├── lua/
│   └── embark/
│       ├── init.lua        # Main setup and load functions
│       ├── colors.lua      # Color palette definitions
│       └── highlights.lua  # Highlight group definitions
├── plugin/
│   └── embark.lua          # Plugin initialization
├── README.md               # Full documentation
├── USAGE.md                # This file
├── example_config.lua      # Configuration examples
└── test_theme.lua          # Syntax test file
```
