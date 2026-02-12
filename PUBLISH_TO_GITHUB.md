# 📦 Publishing Embark Neovim to GitHub

Follow these steps to publish your theme to GitHub and make it available for others!

## Step 1: Initialize Git Repository

```bash
cd /Users/robindrost/Dev/nvimtest

# Initialize git (if not already done)
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: Embark Neovim theme v1.0.0"
```

## Step 2: Create GitHub Repository

### Option A: Using GitHub CLI (Recommended)

```bash
# Install GitHub CLI if you haven't already
# brew install gh

# Login to GitHub
gh auth login

# Create repository and push
gh repo create embark-nvim --public --source=. --remote=origin --push

# That's it! Your repo is now live at:
# https://github.com/YOUR_USERNAME/embark-nvim
```

### Option B: Using GitHub Website

1. Go to https://github.com/new
2. Repository name: `embark-nvim`
3. Description: "🚀 A dark Neovim colorscheme with vibrant colors and transparent background support"
4. Choose "Public"
5. Don't initialize with README (we already have one)
6. Click "Create repository"

Then push your code:

```bash
# Add the remote (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/embark-nvim.git

# Rename branch to main (if needed)
git branch -M main

# Push to GitHub
git push -u origin main
```

## Step 3: Configure Repository

On GitHub, go to your repository settings:

1. **Add Topics** (Settings → scroll to "Topics"):
   - `neovim`
   - `neovim-colorscheme`
   - `neovim-theme`
   - `colorscheme`
   - `theme`
   - `lua`
   - `embark`

2. **Add Description**:
   ```
   🚀 A dark Neovim colorscheme with vibrant colors and transparent background support
   ```

3. **Set Website** (optional):
   - Link to the original embark theme: `https://embark-theme.github.io/`

4. **Enable Issues and Discussions** (Settings → Features):
   - ✅ Issues
   - ✅ Discussions (optional, for community feedback)

## Step 4: Create a Release (Optional but Recommended)

```bash
# Tag your first release
git tag -a v1.0.0 -m "Release v1.0.0: Initial public release"
git push origin v1.0.0

# Or use GitHub CLI
gh release create v1.0.0 --title "v1.0.0 - Initial Release" --notes "Initial public release of Embark Neovim theme"
```

## Step 5: Submit to Plugin Directories

### Neovim Awesome Lists

Create a PR to add your theme to:

1. **awesome-neovim**: https://github.com/rockerBOO/awesome-neovim
   - Add to the "Colorscheme" section

2. **neovimcraft**: https://neovimcraft.com/
   - Automatic indexing from GitHub topics

### Dotfyle

Your plugin will automatically appear on [dotfyle.com](https://dotfyle.com/) if you add the proper topics to your GitHub repo.

## Step 6: Update README with Correct URLs

After publishing, update your README.md:

```bash
# Replace all instances of "yourusername" with your actual GitHub username
# Example: yourusername/embark-nvim → robindrost/embark-nvim

# Open in editor
nvim README.md

# Or use sed (replace YOUR_USERNAME)
sed -i '' 's/yourusername/YOUR_USERNAME/g' README.md
sed -i '' 's/yourusername/YOUR_USERNAME/g' doc/embark.txt

# Commit and push
git add .
git commit -m "docs: update installation URLs"
git push
```

## Installation Instructions for Users

After publishing, users can install with:

### lazy.nvim
```lua
{
  "YOUR_USERNAME/embark-nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("embark").setup({
      transparent_background = false,
    })
    vim.cmd("colorscheme embark")
  end,
}
```

### packer.nvim
```lua
use {
  "YOUR_USERNAME/embark-nvim",
  config = function()
    require("embark").setup()
    vim.cmd("colorscheme embark")
  end
}
```

### vim-plug
```vim
Plug 'YOUR_USERNAME/embark-nvim'
```

## Step 7: Promote Your Theme

1. **Post on Reddit**:
   - r/neovim - "Made a thing" flair
   - Include screenshots!

2. **Twitter/X**:
   - Use hashtags: #neovim #vim #colorscheme

3. **Hacker News** (Show HN):
   - https://news.ycombinator.com/submit

4. **Add Screenshots**:
   - Take screenshots of your theme in action
   - Add them to a `screenshots/` folder
   - Update README.md with images

## Optional: Add Screenshots

```bash
# Create screenshots directory
mkdir -p screenshots

# Take screenshots and add them
# Then update README.md:
```

Add to README.md:
```markdown
## Screenshots

### Dashboard
![Dashboard](screenshots/dashboard.png)

### Code
![Code](screenshots/code.png)

### Transparent Mode
![Transparent](screenshots/transparent.png)
```

## Maintenance

Keep your theme updated:

```bash
# Make changes
git add .
git commit -m "feat: add support for new plugin"
git push

# Create new release
git tag -a v1.1.0 -m "Release v1.1.0"
git push origin v1.1.0
```

## Checklist

Before publishing, ensure:

- [ ] All files committed
- [ ] README has correct URLs
- [ ] LICENSE file present
- [ ] .gitignore configured
- [ ] Documentation complete
- [ ] Test the theme works
- [ ] GitHub topics added
- [ ] Description set
- [ ] First release tagged

---

## Quick Command Summary

```bash
# 1. Initialize and commit
cd /Users/robindrost/Dev/nvimtest
git init
git add .
git commit -m "Initial commit: Embark Neovim theme v1.0.0"

# 2. Create and push to GitHub (using gh CLI)
gh auth login
gh repo create embark-nvim --public --source=. --remote=origin --push

# 3. Create release
gh release create v1.0.0 --title "v1.0.0 - Initial Release" --notes "Initial public release"

# 4. Update URLs in files (replace YOUR_USERNAME)
# Edit README.md and doc/embark.txt manually or with sed

# Done! 🎉
```

Your theme is now live and ready for the Neovim community to use!
