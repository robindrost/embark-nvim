# 🚀 Embark Neovim Theme

<div align="center">

A dark Neovim colorscheme with vibrant colors, ported from the [embark-theme/vim](https://github.com/embark-theme/vim) project.

Written in pure Lua for modern Neovim with transparent background support.

[Features](#features) • [Installation](#installation) • [Configuration](#configuration) • [Plugin Support](#plugin-support)

</div>

> **Note**: This theme was built by [Claude Code](https://claude.com/claude-code) with a human loving touch ❤️
> A collaboration between AI and human creativity to bring the beautiful Embark color palette to modern Neovim.

---

## Features

- 🎨 Beautiful, vibrant color palette
- 🪟 Transparent background support
- 🔌 Extensive plugin support:
  - Treesitter
  - LSP & Diagnostics
  - Telescope
  - Snacks.nvim (dashboard, picker, notifier, indent guides)
  - Lualine (statusline)
  - nvim-cmp
  - nvim-tree / neo-tree
  - GitSigns
  - Which-key
  - nvim-notify
  - And many more!
- ⚡ Written in Lua for performance
- 🎯 Modern Neovim-first approach

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim) (recommended)

```lua
{
  "robindrost/embark-nvim",  -- Replace with your GitHub username
  name = "embark",
  lazy = false,
  priority = 1000,
  config = function()
    require("embark").setup({
      transparent_background = false,  -- Set to true for transparent background
      terminal_italics = true,         -- Enable italics for comments
      terminal_colors = true,          -- Set terminal colors
    })
    vim.cmd("colorscheme embark")
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "robindrost/embark-nvim",  -- Replace with your GitHub username
  as = "embark",
  config = function()
    require("embark").setup({
      transparent_background = false,
      terminal_italics = true,
      terminal_colors = true,
    })
    vim.cmd("colorscheme embark")
  end
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'robindrost/embark-nvim'

" Then in your init.vim or init.lua:
lua << EOF
  require("embark").setup({
    transparent_background = false,
    terminal_italics = true,
    terminal_colors = true,
  })
  vim.cmd("colorscheme embark")
EOF
```

### Manual Installation

1. Copy the files to your Neovim config directory:
   ```bash
   cp -r lua/embark ~/.config/nvim/lua/
   cp -r colors ~/.config/nvim/
   ```

2. Add to your `init.lua`:
   ```lua
   require("embark").setup({
     transparent_background = false,
     terminal_italics = true,
     terminal_colors = true,
   })
   vim.cmd("colorscheme embark")
   ```

## Configuration

### Default Settings

```lua
require("embark").setup({
  transparent_background = false,  -- Enable transparent background
  terminal_italics = true,         -- Enable italic comments (requires font support)
  terminal_colors = true,          -- Set terminal colors
})
```

### Transparent Background

To use a transparent background (useful for terminal transparency):

```lua
require("embark").setup({
  transparent_background = true,
})
vim.cmd("colorscheme embark")
```

### Disable Italics

If your terminal doesn't support italics:

```lua
require("embark").setup({
  terminal_italics = false,
})
vim.cmd("colorscheme embark")
```

## Color Palette

The theme uses the following color palette:

### Background Colors (Space)
- `space0`: `#100E23` - Darkest background
- `space1`: `#1e1c31` - Main background
- `space2`: `#2F2A47` - Lighter background
- `space3`: `#3E3859` - Visual selection
- `space4`: `#585273` - Brightest background

### Text Colors (Astral)
- `astral0`: `#8A889D` - Subtle text / comments
- `astral1`: `#cbe3e7` - Normal text

### Semantic Colors (Nebula)
- Red: `#F48FB1` / Dark: `#F02E6E`
- Green: `#A1EFD3` / Dark: `#7fe9c3`
- Yellow: `#ffe6b3` / Dark: `#F2B482`
- Blue: `#91ddff` / Dark: `#78a8ff`
- Purple: `#d4bfff` / Dark: `#7676ff`
- Cyan: `#ABF8F7` / Dark: `#63f2f1`

## Plugin Support

This theme includes custom highlighting for:

- **Treesitter**: Full semantic highlighting support
- **LSP**: Diagnostics, signs, virtual text, and semantic tokens
- **Telescope**: Custom colors for pickers and titles
- **Snacks.nvim**: Dashboard, picker (fuzzy finder), notifier, and indent guides - panels match editor background
- **Lualine**: Custom statusline theme with mode-specific colors
- **nvim-cmp**: Completion menu styling
- **nvim-tree / neo-tree**: File explorer highlighting
- **GitSigns**: Git change indicators
- **which-key**: Command palette styling
- **nvim-notify**: Notification styling
- **Leap / Flash**: Motion plugin support
- **Render Markdown**: Enhanced markdown rendering
- **And more!**

### Lualine Configuration

To use the Embark theme with Lualine:

```lua
{
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      theme = require("embark.lualine").theme(),
    }
  }
}
```

Or with vanilla Neovim setup:

```lua
require("lualine").setup({
  options = {
    theme = require("embark.lualine").theme(),
  }
})
```

The theme provides mode-specific colors:
- **Normal**: Green mode indicator
- **Insert**: Blue mode indicator
- **Visual**: Purple mode indicator
- **Replace**: Red mode indicator
- **Command**: Yellow mode indicator

## Requirements

- Neovim >= 0.8.0
- `termguicolors` enabled (automatically set by the theme)
- A terminal that supports true color

## Comparison with Original

This Lua-based port includes all features from the original Vimscript version, plus:

- ✅ Cleaner, more maintainable code structure
- ✅ Better transparency support
- ✅ Modern Neovim API usage
- ✅ More configurable options
- ✅ Better plugin integration

## Credits

- **Original theme**: [embark-theme/vim](https://github.com/embark-theme/vim)
- **Inspired by**: Challenger Deep, Ayu Mirage, and Manta
- **Neovim port**: Built by [Claude Code](https://claude.com/claude-code) with human collaboration
- **Converted with**: AI assistance + human creativity ❤️

## License

MIT License - See [LICENSE](LICENSE) file for details.

Based on the original [embark-theme/vim](https://github.com/embark-theme/vim) repository.
