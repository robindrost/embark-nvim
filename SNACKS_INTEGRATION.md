# Snacks.nvim Integration

The Embark theme includes comprehensive support for [snacks.nvim](https://github.com/folke/snacks.nvim) panels and components. All panels automatically match the editor background, whether using solid or transparent backgrounds.

## Supported Components

### ✅ Base Windows
- `SnacksNormal` - Main window background (matches editor)
- `SnacksNormalNC` - Non-current windows
- `SnacksWinBar` - Window title bars
- `SnacksBackdrop` - Float shadows

### ✅ Dashboard
All dashboard elements styled with Embark colors:
- Header text in dark purple
- File paths in blue
- Directory names in purple
- Key bindings in yellow
- Footer text in dark cyan
- Background matches editor (transparent or solid)

### ✅ Picker (Fuzzy Finder)
The picker panel background matches your editor:
- Same background as Normal text
- Border colors match theme
- Selected items in purple with space3 background
- Match highlighting in yellow
- Titles use Embark accent colors (blue, purple, green)

### ✅ Notifier
Notifications styled with semantic colors:
- **Info** - Blue icons/borders
- **Warn** - Yellow icons/borders
- **Error** - Red icons/borders
- **Debug** - Gray icons/borders
- **Trace** - Purple icons/borders
- Background matches theme (transparent or space2)

### ✅ Indent Guides
- Standard indent lines in space3
- Current scope highlighting in purple

## Background Behavior

### With `transparent_background = false` (default)
All snacks.nvim panels use `space1` (#1e1c31) - matching the editor background:

```lua
require("embark").setup({
  transparent_background = false,
})
```

Result:
- Dashboard background: `space1`
- Picker background: `space1`
- Notifier background: `space2` (slightly lighter for contrast)
- All panels have consistent, solid backgrounds

### With `transparent_background = true`
All snacks.nvim panels become transparent, matching your terminal:

```lua
require("embark").setup({
  transparent_background = true,
})
```

Result:
- Dashboard background: transparent
- Picker background: transparent
- Notifier background: transparent
- All panels show your terminal background through

## Example Configuration

```lua
-- In your lazy.nvim config
return {
  {
    dir = "path/to/embark-theme",
    name = "embark",
    lazy = false,
    priority = 1000,
    config = function()
      require("embark").setup({
        transparent_background = false,  -- or true for transparency
        terminal_italics = true,
        terminal_colors = true,
      })
      vim.cmd("colorscheme embark")
    end,
  },
  {
    "folke/snacks.nvim",
    priority = 900,
    lazy = false,
    opts = {
      dashboard = { enabled = true },
      notifier = { enabled = true },
      picker = { enabled = true },
      indent = { enabled = true },
    },
  },
}
```

## Color Reference

Snacks.nvim components use these Embark colors:

| Element | Color | Hex |
|---------|-------|-----|
| Background (solid) | space1 | #1e1c31 |
| Background (float) | space2 | #2F2A47 |
| Selection | space3 | #3E3859 |
| Border | space4 | #585273 |
| Info accent | blue | #91ddff |
| Warning accent | yellow | #ffe6b3 |
| Error accent | red | #F48FB1 |
| Success accent | green | #A1EFD3 |
| Special accent | purple | #d4bfff |

## Testing

To verify snacks.nvim integration:

```vim
" Open the dashboard
:lua Snacks.dashboard()

" Open the picker
:lua Snacks.picker.files()

" Show a notification
:lua Snacks.notify("Test notification", "info")

" Check highlight groups
:Telescope highlights
" Then search for "Snacks"
```

## Troubleshooting

### Panels don't match editor background

1. Verify theme is loaded:
   ```vim
   :colorscheme
   ```

2. Check if snacks is loaded after the theme:
   ```lua
   -- In lazy.nvim, ensure embark has higher priority
   { "embark", priority = 1000 },
   { "snacks.nvim", priority = 900 },
   ```

3. Force reload:
   ```vim
   :lua require("embark").load()
   ```

### Transparency not working

1. Check your configuration:
   ```vim
   :lua print(vim.inspect(require('embark').config))
   ```

2. Verify terminal supports transparency

3. Make sure terminal background is set to transparent in your terminal emulator settings

## Additional Resources

- [Snacks.nvim GitHub](https://github.com/folke/snacks.nvim)
- [Embark Theme Original](https://github.com/embark-theme/vim)
- See `snacks_example.lua` for a complete configuration example
