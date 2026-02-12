# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-02-12

### Added
- Initial release of Embark Neovim theme
- Full Lua implementation for modern Neovim
- Transparent background support
- Comprehensive Treesitter highlighting
- LSP semantic token support
- LSP diagnostics styling (error, warn, info, hint)
- Extensive plugin support:
  - Telescope
  - snacks.nvim (dashboard, picker, notifier, indent guides)
  - nvim-cmp
  - nvim-tree / neo-tree
  - gitsigns.nvim / vim-gitgutter
  - which-key.nvim
  - nvim-notify
  - leap.nvim / flash.nvim
  - Render Markdown
  - Fugitive
  - ALE
  - And more!
- Configuration options:
  - `transparent_background` - Enable/disable transparency
  - `terminal_italics` - Enable/disable italic comments
  - `terminal_colors` - Enable/disable terminal color setting
- Complete documentation in `:help embark`
- Example configurations and test files

### Changed
- Ported from Vimscript to Lua
- Modernized API using `vim.api.nvim_set_hl()`
- Improved plugin integration

### Credits
- Based on the original [embark-theme/vim](https://github.com/embark-theme/vim)
- Original theme inspired by Challenger Deep, Ayu Mirage, and Manta
- Neovim port created by [Claude Code](https://claude.com/claude-code) with human collaboration ❤️
